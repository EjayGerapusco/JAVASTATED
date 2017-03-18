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
  
  <title>${title}</title>


</head>

<body>

<div class="text-center">
<h1>You have just added a song ${song}</h1>
</div>


<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Song: ${song.name}</h2>
<h2>Artist: ${song.code}</h2>

<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/">
        Back to Homepage
      </a>
    </button>
</div>

<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View songs list
      </a>
    </button>
</div>


  </div>
  <div class="col-md-4"></div>

</div>

</body>
</html>
