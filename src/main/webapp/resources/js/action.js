$(document).ready(function() {

	/*$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			modal : true,
			draggable : false,
			resizable : false,
			show : 'blind',
			hide : 'blind',
			width : 400,
			closeOnEscape: false,
			open: function(event, ui) {
		        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
		    },
			buttons : {
				"Ok!" : function() {
					$(this).dialog("close");
					$("#test").empty();
				}
			}
		});
	});
*/
	$('#submitForm').submit(function(e) {
		var frm = $('#submitForm');
		e.preventDefault();

		var data = {}
		var Form = this;
		// Gather Data also remove undefined keys(buttons)
		$.each(this, function(i, v) {
			var input = $(v);
			data[input.attr("name")] = input.val();
			delete data["undefined"];
		});
		$.ajax({
			contentType : 'application/json; charset=utf-8',
			type : frm.attr('method'),
			url : frm.attr('action'),
			dataType : 'json',
			data : JSON.stringify(data),
			success : function(callback) {
				if (callback.status == "0") {
					$('#name').val('');
					$('#email').val('');
					$('#phone').val('');
					$('#message').val('');
					confirmationPopup(callback.result,"Warning !");
				} else {
					var message = '';
					$.each(JSON.parse(callback.result), function(i, l) {
						message += l + "<br/>";
					});
					confirmationPopup(message,"Warning !");
				}
			},
			error : function(failData) {
				confirmationPopup("Fail:" + failData,"Warning !");
			}
		});
	});
	if (top !== self) {
		$.ui.dialog.prototype._focusTabbable = $.noop;
	}
});

function showProfileDiv(){
	$("#profileDiv").show();
	$("#profileDiv").load("/webapp/pages/services/tutorial/tutorial_home.jsp")
}

function loadTutorialPage(){
	$("#profileDiv").hide();
	$("#tutorialDiv").load('tutorial_home.jsp');
}

showConfirmation = function() {
	$("#blackcover, #popupbox").show().css({visibility: "visible"});
};

hideConfirmation = function() {
	$("#blackcover, #popupbox").hide().css({visibility: "hidden"});
};

$(document).on("click","#popupOK", function(){
	globalPopup(0);
});

confirmationPopup = function(message,title) {
	$("#popupDiv").load("./pages/popup.jsp", function(){
		$("#Confirmation").html(title);
		$("#popupOK").val("Ok").show();
		$("#popupOK").attr({
			"title" : "Ok"
		});
		$("#popupMessage").html(message);
		showConfirmation();
	});
};

/*Google map starts*/

/*var map;
function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644)
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);*/

/*Google map ends*/