<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <title>List of Songs</title>

  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
 <style> 
 body{
  background-size: cover;
    background-image: url("https://s-media-cache-ak0.pinimg.com/originals/31/80/28/3180285781fb9e065303947ea375574a.jpg");
    min-height: 100%;
}

</style> 
</head>

<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
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

<br>
<br>

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
		<tbody>
	 		<#list inventory as song>
				<tr>
					<td>${song.name}</td>
					<td>${song.code}</td>
					<td>
  							<a href="/show/${song.code}">
									<button type="button" class="btn btn-default"> View Song	</button>
								</a>
					</td>
					<td>
  							<button type="button" class="btn btn-default"><a href="/delete/${song.code}">
  								
  							Delete
  							</a>
  							</button>
					</td>
				</tr>

			</#list>
		</tbody>	
	</table>

  </div>

  <div class="col-md-2"><a href="/adding">Add a Song</a></div>
</div>

</body>
</html>
