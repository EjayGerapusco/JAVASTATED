<!DOCTYPE html>
<html>
<title>${title}</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<style>
#div1{
    float: right;
    margin-top: 90px;
    height: 500px;
    width: 800px;
}
#lign{
      width:400px;
}
td{
  background-color:gray;
}
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("https://s-media-cache-ak0.pinimg.com/originals/31/80/28/3180285781fb9e065303947ea375574a.jpg");
    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 16px;
}
.w3-display-left {
    position: absolute;
    top: 40%;
    left: 10%;
    transform: translate(0%,-50%);
}
.w3-display-buttomright {
    position: absolute;
    top: 93%;
    left: 80%;
    transform: translate(0%,-50%);
}

</style>
<body>

<!-- Navbar (sit on top) -->
<header><div class="w3-top">
  <div class="w3-bar w3-white w3-card-2" id="myNavbar">
    <a href="/" class="w3-bar-item w3-button w3-wide">Share My Playlist</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="/adding" class="w3-bar-item w3-button">CREATE</a>
      <a href="/about" class="w3-bar-item w3-button">ABOUT</a>
      <a href="/team" class="w3-bar-item w3-button">THE TEAM</a>
      <a href="/songs" class="w3-bar-item w3-button">SONGS</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars w3-padding-right w3-padding-left"></i>
    </a>
  </div>
</div>
</header>



<!-- Header with full-height image -->
<div class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div id = "div1">
  <div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
  	
	<table class="table table-striped">
		<thead>
			<tr>
			<th>Song Name</th>
			<th>Artist</th>
			</tr>
		</thead>
		<tbody">
	 		<#list inventory as song>
				<tr>
					<td >${song.name}</td>
					<td>${song.code}</td>
					<td>
  							
						</div>
					</td>
					<td>
  							<a href="/delete/${song.code}"><button type="button" class="btn btn-default">
  								
  							Delete
  							
  							</button></a>
					</td>
				</tr>

			</#list>
		</tbody>	
	</table>

  </div>

 
</div>
  </div>
  <div class="w3-display-left w3-padding-xxlarge w3-text-white">
    <span class="w3-jumbo w3-hide-small">Share A Playlist</span><br>
    
    <span class="w3-large">PLAY . LISTEN . LOVE</span>
    <p><a href="/about" class="w3-btn w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">What we do</a></p>
  </div>
  <div class="w3-display-buttomright w3-padding-large w3-text-white">
    <span class="w3-medium w3-hide-small">Powered By: Javastated</span><br>
    
</div>

  <div id = "lign" class="w3-display-bottomleft w3-padding-xxlarge w3-text-grey w3-large">
    <p>Connect Us: </p>
    <a href="#" class="w3-hover-text-white"><i class="fa fa-facebook-official"></i></a>
    <a href="#" class="w3-hover-text-white"><i class="fa fa-flickr"></i></a>
    <a href="#" class="w3-hover-text-white"><i class="fa fa-instagram"></i></a>
    <a href="#" class="w3-hover-text-white"><i class="fa fa-twitter"></i></a>
    <a href="#" class="w3-hover-text-white"><i class="fa fa-linkedin"></i></a>
  </div>
  
</div>


<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-closebtn w3-text-white w3-opacity w3-hover-opacity-off w3-xxlarge w3-container w3-display-topright" title="Close Modal Image">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

</body>
</html>
