<?php /* Smarty version Smarty-3.1-DEV, created on 2013-11-03 22:05:01
         compiled from "views/nav.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7405375095276b47a57fed5-37715892%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7b2afeb42efe0637a49cffd0bb94a35338f2c806' => 
    array (
      0 => 'views/nav.tpl',
      1 => 1383512699,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7405375095276b47a57fed5-37715892',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1-DEV',
  'unifunc' => 'content_5276b47a581858_93540991',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5276b47a581858_93540991')) {function content_5276b47a581858_93540991($_smarty_tpl) {?><?php if (!is_callable('smarty_function_siteUrl')) include '/var/www/ruisseau/vendor/slim/views/Slim/Views/SmartyPlugins/function.siteUrl.php';
?><!-- Static navbar -->
<div class="navbar navbar-fixed-top navbar-default">
	<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="<?php echo smarty_function_siteUrl(array(),$_smarty_tpl);?>
">AceStream Guide</a>
	</div>
	<div class="navbar-collapse collapse">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="<?php echo smarty_function_siteUrl(array(),$_smarty_tpl);?>
about/">About</a></li>
			<li><a href="#contact">Contact</a></li>
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="#">Action</a></li>
				<li><a href="#">Another action</a></li>
				<li><a href="#">Something else here</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">Nav header</li>
				<li><a href="#">Separated link</a></li>
				<li><a href="#">One more separated link</a></li>
			</ul>
			</li>
		</ul>
	</div><!--/.nav-collapse -->
	</div>
</div><?php }} ?>
