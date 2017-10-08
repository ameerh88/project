<style type="text/css">
#popupbox {
	position: fixed;
	top: 50%;
	left: 50%;
	margin-top: -120px; /*half of the height plus a little to the top*/
	margin-left: -150px; /*half of the width */
	visibility: hidden;
	display: none;
	border: 0px solid #FFFFFF;
	background-color: #FFF;
	color: #333;
	padding: 0;
	height: 200px;
	width: 450px;
	z-index: 10;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}

#blackcover {
	visibility: hidden;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: #000;
	filter: alpha(opacity = 80);
	-moz-opacity: .8;
	opacity: .8;
	z-index: 9;
}

.ux-modl .ux-modl-header {
	background-color: #FFFFFF;
	margin-bottom: 13px;
	padding: 10px 4px 13px 4px;
	padding-left: 30px;
	font-weight: 800;
}

.ux-modl-content {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	height: 100%;
	padding: px;
	/* overflow: scroll;*/
	max-height: 450px;
}

.ux-width-30t {
	width: 450px !important;
}

.ux-height-12t {
	height: 200px !important;
}

.ux-margin-left-page-8t {
	margin-left: 140px !important;
}

.ux-margin-left-page-half8t {
	margin-left: 145px !important;
}

.ux-margin-left-page-9t {
	margin-left: 150px !important;
}

.ux-margin-left-page-10t {
	margin-left: 160px !important;
}

.ux-margin-left-page-11t {
	margin-left: 170px !important;
}

.ux-margin-left-page-12t {
	margin-left: 180px !important;
}
</style>
<script type="text/javascript">
	function globalPopup(sw) {
		if (sw == 1) {
			// Show popup
			document.getElementById('blackcover').style.visibility = 'visible';
			document.getElementById('popupbox').style.visibility = 'visible';
			document.getElementById('blackcover').style.display = 'block';
			document.getElementById('popupbox').style.display = 'block';
		} else {
			// Hide popup
			document.getElementById('blackcover').style.visibility = 'hidden';
			document.getElementById('popupbox').style.visibility = 'hidden';
			document.getElementById('blackcover').style.display = 'none';
			document.getElementById('popupbox').style.display = 'none';
		}
	}
	
	
</script>

<!-- Popup Starts -->
<div id='blackcover'></div>
<div id='popupbox'
	class="ux-modl ux-width-30t ux-height-12t popupMainDIV">
	<div class="ux-modl-header">
		<h5>
			<img src="${pageContext.request.contextPath}/resources/images/warning.png"
				width="20" height="20"> <span style="font-weight: 600" id="Confirmation"></span>
		</h5>
	</div>

	<div class="ux-modl-content" style="width: 100%" id="popupContentDIV">
		<div align="center">
			<h3
				style="width: 90%; font-size: 16px;  margin-top: 0px;  margin-bottom: 30px; margin-left: 5px; margin-right: 5px;"
				id="popupMessage">Hey! are you sure want to proceed?</h3>
		</div>
		<hr class="popup-hr">
		<div class="bccolorcss" style="padding: 10px; height: 50px;">
			<div style="display: inline; float: right;">
				<input type="button" name="button" class="btn btn-secondary "
					 id="popupOK" value="Ok"
					style="width: 120px; color: white; border: 1px solid white; background-color: #067ab4;">
					</input>
			</div>
		</div>
	</div>
</div>



<!-- Popup Ends -->