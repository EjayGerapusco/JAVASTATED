<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <title>List of Songs</title>

  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  
<style>
 #div1{
 background: rgba(76, 175, 80, 0.1);
 }
</style> 
</head>

<body>



<br>
<br>

<div class="row" id = "div1">
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
					<td>${song.code}</td>
					<td>${song.name}</td>
					<td>
  							<button type="button" class="btn btn-default"><a href="/show/${song.code}">
  							View Song	
  								
  							</a>
  							</button>
						</div>
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
