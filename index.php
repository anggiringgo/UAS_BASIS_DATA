<!DOCTYPE html>
<html>
<head>
	<title>Laundry</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" href="img/laundry.png" sizes="16x16 32x32" type="image/png">
</head>
<body>
	<br/>
	<br/>
	<center><h2>Login Admin</h2></center>	
	<br/>
	<div class="login">
	<br/>
		<form action="login.php" method="post" onSubmit="return validasi()">
			<div>
				<label>Username:</label>
				<input type="text" name="username" placeholder="Masukkan username">
			</div>
			<div>
				<label>Password:</label>
				<td><input type="password" name="password" placeholder="Masukkan password">
			</div>			
			<div>
				<input type="submit" value="Login" class="tombol">
			</div>
		</form>
	</div>
</body>

<script type="text/javascript">
	function validasi() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;		
		if (username != "" && password!="") {
			return true;
		}else{
			alert('Username dan Password harus di isi !');
			return false;
		}
	}

</script>
</html>