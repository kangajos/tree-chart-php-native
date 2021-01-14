<?php
require_once "config.php";
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Tree Organization</title>
  </head>
  <body>

  	<!-- Image and text -->
	<nav class="navbar navbar-dark bg-dark">
	  <a class="navbar-brand" href="#">
	   <!--  <img src="=https://pics.clipartpng.com/Tree_PNG_Clip_Art-2890.png" width="30" height="30" class="d-inline-block align-top" alt=""> -->
	    Tree Organization
	  </a>
	</nav>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-12">
				<table class="table table-responsive table-striped table-bordered">
					<thead>
						<tr>
							<th>NO BATCH</th>
							<th>NO REG</th>
							<th>ID ORDER</th>
							<th>ID DELIVERY ORDER</th>
							<th>DATE OFRECEIPT</th>
							<th>QUANTITY</th>
							<th>FROM</th>
							<th>TOS</th>
							<th>LEVEL</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach(getData() as $key => $value):?>
						<tr>
							<td>
								<a target="_blank" href="tree.php?nobatch=<?=$value["nobatch"]?>" class="btn btn-link"><?=$value["nobatch"]?></a>
							</td>
							<td><?=$value["noreg"]?></td>
							<td><?=$value["idorder"]?></td>
							<td><?=$value["iddeliveryorder"]?></td>
							<td><?=$value["dateofreceipt"]?></td>
							<td><?=$value["qty"]?></td>
							<td><?=$value["froms"]?></td>
							<td><?=$value["tos"]?></td>
							<td><?=$value["level"]?></td>
						</tr>
						<?php endforeach;?>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>