<?php /* Smarty version Smarty-3.1-DEV, created on 2013-11-03 21:56:13
         compiled from "views/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2927665265276b7e5844d97-82351111%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0580d4090148eed50d42a0b7012e5a9ff1ec7df5' => 
    array (
      0 => 'views/index.tpl',
      1 => 1383512171,
      2 => 'file',
    ),
    '91ba7ab2d5bae6724cc1957aaf5d6a26216e3fed' => 
    array (
      0 => 'views/layout.tpl',
      1 => 1383512133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2927665265276b7e5844d97-82351111',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1-DEV',
  'unifunc' => 'content_5276b7e58bd802_10114403',
  'variables' => 
  array (
    'title' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5276b7e58bd802_10114403')) {function content_5276b7e58bd802_10114403($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">

	<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>

	<link href="//netdna.bootstrapcdn.com/bootswatch/3.0.0/flatly/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<?php echo $_smarty_tpl->getSubTemplate ('nav.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	
	<div class="jumbotron">
		<div class="container">
			<h1>AceStream Guide</h1>
			<p>AceStream is a peer-to-peer streaming video application that allows you to view high quality video streams shared by other people.</p>
			<p>Our guide will help you to setup AceStream, so you can enjoy your stream easily and in the best quality.</p>
		</div>
	</div>

	<div>
		<h2>Installing AceStream</h2>

	</div>

	<?php echo $_smarty_tpl->getSubTemplate ('footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
