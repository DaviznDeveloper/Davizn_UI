<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	canvas {
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		z-index: 2;
	}

	#canvas-tool {
		z-index: 3;
		position: fixed;
		top: 300;
		left: 100;
		background: rgba(0, 0, 0, 0.7);
		padding: 1em;
		color:white;
	}

	#canvas-tool * {
		margin-bottom: 1em;
	}

	@media (-webkit-min-device-pixel-ratio: 1.25), (min-resolution: 120dpi) {
		form * {
			font-size: 1.5em;
		}
	}

	body {
		background-image: url('http://www.publicdomainpictures.net/download-picture.php?adresar=50000&soubor=notebook-page.jpg');
		font-family: sans-serif;
		padding: 1em;
	}
</style>
<script src="${pageContext.request.contextPath}/resources/lib/atrament/dist/atrament.min.js"></script>
<%@include file="/renual/header2.jsp"%>
				
				<!-- content -->
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 그룹</a></li>
							<li class="active">그룹 데이터</li>
						</ol>
						
						<div class="col-sm-12 no-paddi3456789-g margin-bottom-10">
							
							<form id="canvas-tool">
								<button onclick="event.preventDefault(); atrament.clear();">clear</button><br>
								<label>Thickness</label><br>
								<input type="range" min="1" max="40" oninput="atrament.weight = parseFloat(event.target.value);" value="2" step="0.1" autocomplete="off"/><br>
								<label>Smoothing</label><br>
								<input type="checkbox" onchange="atrament.smoothing = event.target.checked;" checked autocomplete="off"><br>
								<label>Mode</label>
								<select onchange="atrament.mode = event.target.value;">
									<option value="draw" default>Draw</option>
									<option value="fill" default>Fill</option>
									<option value="erase" default>Erase</option>
								</select><br>
								<label>Colour</label>
								<input type="color" onchange="atrament.color = event.target.value;" value="black" autocomplete="off"><br>
								<label>Opacity</label><br>
								<input type="range" min="0" max="1" onchange="atrament.opacity = parseFloat(event.target.value);" value="1" step="0.05" autocomplete="off">
							</form>
							<canvas></canvas>
							
						</div>
						
					</div>	
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>


<script type="text/javascript">
		

		var atrament = atrament('canvas', window.innerWidth, window.innerHeight);
	
</script>

<%@include file="/renual/footer.jsp"%>