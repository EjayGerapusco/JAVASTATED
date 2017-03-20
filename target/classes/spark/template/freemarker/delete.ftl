<!DOCTYPE html>
<html>
<head>
<style>
  body {
    background-size: cover;
    background-image: url("https://s-media-cache-ak0.pinimg.com/originals/31/80/28/3180285781fb9e065303947ea375574a.jpg");
    min-height: 100%;
  }
#tcenter{
padding-top: 100px;
}
</style> 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  
  <title>Delete song</title>


</head>

<body>


  <div class="text-center" id = "tcenter">
    <h1>You are deleting: ${song.name}</h1>
    <h2>Song: ${song.name}</h2>
    <h2>Artist: ${song.code}</h2>
    <form  method="post" action="/delete">
<input type="hidden" name="code" class="form-control" id="song_code" value="${song.code}">
    <button type="submit" class="btn btn-default">
      Delete
    </button>
</form>
</br>
      <button type="button" class="btn btn-default">
      <a href="/">
        Back to Homepage
      </a>
    </button>
    <button type="button" class="btn btn-default">
      <a href="/list">
        View Song list
      </a>
    </button>
  </div>





  </div>

</div>

</body>
  

</html>