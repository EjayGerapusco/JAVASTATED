<!DOCTYPE html>
<html>
<head>
<title>${forms}</title>
<style>
  body {
    background-image: url("http://www.wallpapersfreedesktop.com/uploads/music-dj-headphones-backgrounds-wallpapers.jpg");
  }
  #tcenter{
  padding-top: 70px;
  }
</style> 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>  
  
<body>
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
</div>
<div class="text-center" id= "tcenter">
<h2>
<font color="5dccff">
Add a Song
</font>
</h2>
</div>



<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    

<form method = "post" action="/adding">
  <div class="form-group">
    <label for="exampleInputItem1"><font color="white">Song</font: </label>
    <input type="name" name="name" class="form-control" id="InputItemName" placeholder="Song Name">
  </div>
  <div class="form-group">
    <label for="exampleInputDetails1">Artist: </label>
    <input type="code" name="code" class="form-control" id="song_code" placeholder="Artist">
  </div>
 
  <button type="submit" class="btn btn-default">
    Submit 
  </button>
</form>

  

  <div class="col-md-4"></div>

</body>
</html>
