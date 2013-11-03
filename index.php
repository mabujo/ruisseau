<?php 
require 'vendor/autoload.php';

//slim init
$ruisseau = new \Slim\Slim(array(
	'view' => new \Slim\Views\Smarty(),
	'debug' => true,
	'templates.path' => "views/",
	'log.enabled' => true
));

//smarty init
$view = $ruisseau->view();
$view->parserDirectory = dirname(__FILE__) . '/smarty';
$view->parserCompileDirectory = dirname(__FILE__) . '/smarty/compiled';
$view->parserCacheDirectory = dirname(__FILE__) . '/smarty/cache';
$view->parserExtensions = array(
    dirname(__FILE__) . '/vendor/slim/views/Slim/Views/SmartyPlugins',
);

$ruisseau->get('/', function() use ($ruisseau) 
{
	$ruisseau->render('index.tpl', array('title' => 'AceStream Guide', 'content' => 'index'));
});

$ruisseau->get('/about/', function() use ($ruisseau) 
{
	$ruisseau->render('about.tpl', array('title' => 'About AceStream Guide', 'content' => 'index'));
});

$ruisseau->run();

?>