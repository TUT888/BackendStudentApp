<?php
if (isset($_SESSION['username'])) {
	$username = $_SESSION['username'];
} else {
	$username = '';
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link rel="stylesheet" href="/style.css">
	<title>Quản lý nhà sách</title>
</head>

<body class="tp-background">
	<!--Nav bar-->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<div class="container-fluid font-weight-bold">
			<a class="navbar-brand" href="/index.php">Tìm kiếm gia sư</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav ml-auto">
									
					<li class="nav-item">
						<a class="nav-link active" href="/index.php">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/index.php?controller=home&action=logout">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<?= $content ?>
    <!-- Footer -->
	<div class="text-white bg-dark font-weight-bold text-center pt-4 pb-3">
		<h5>Phần mềm quản lý ứng dụng</h5>
		<h6>Giao diện cho admin</h6>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="/main.js"></script>
</body>

<div id="google_translate_element"></div>

<script type="text/javascript">
	function googleTranslateElementInit() {
		new google.translate.TranslateElement({pageLanguage: 'vi'}, 'google_translate_element');
	}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

</html>