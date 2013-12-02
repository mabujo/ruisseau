<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">

	<title>{$title}</title>

	<link href="//netdna.bootstrapcdn.com/bootswatch/3.0.0/flatly/bootstrap.min.css" rel="stylesheet">
	<link href="{siteUrl}css/style.css" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<div id="wrap">
		{include 'nav.tpl'}
		<div id="main_content">
			{block 'content'}<div>Not Found</div>{/block}
		</div>
	</div>
	{include 'footer.tpl'}