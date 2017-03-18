<!DOCTYPE html>
<html>
<head>
<style>
  body {
    background-image: url("https://images2.alphacoders.com/701/thumb-1920-70172.jpg");
  }
</style> 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  
  <title>${forms}</title>


</head>
<body>


<div class="text-center">
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

<button type="button" class="btn btn-info">
    <a href="/">
       Home
      </a>
  </button>
</form>

<div class="btn-group" role="group" aria-label="...">
  

  <div class="col-md-4"></div>

</body>
</html>
