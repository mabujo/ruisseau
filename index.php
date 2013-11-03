<?php 
require 'vendor/autoload.php';

$ruisseau = new \Slim\Slim(array(
	'view' => new \Slim\Views\Smarty(),
	'debug' => true,
	'log.enabled' => true
));

$view = $ruisseau->view();
$view->parserDirectory = dirname(__FILE__) . 'smarty';
$view->parserCompileDirectory = dirname(__FILE__) . '/compiled';
$view->parserCacheDirectory = dirname(__FILE__) . '/cache';

$ruisseau->get('/', 'getHome');
$ruisseau->get('/about', 'getAbout');

function getHome()
{

}

function getAbout()
{

}

$ruisseau->run();

include("inc/header.php"); 
?>

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

<?php include("inc/footer.php") ?>