<?php 

//require frameworks
require 'vendor/autoload.php';

//add cache control headers
header('Cache-Control: max-age=3600, must-revalidate');

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

//home page
$ruisseau->get('/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'index.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'AceStream Guide | Fix buffering and get the best from AceStream', 'content' => 'index'));
});

//about page
$ruisseau->get('/about/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'about.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'About AceStream Guide', 'content' => 'about'));
});

//linux page
$ruisseau->get('/linux/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'linux.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'AceStream on Linux | AceStream Guide', 'content' => 'linux'));
});

//buffering page
$ruisseau->get('/buffering/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'buffering.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'Fix AceStream buffering | AceStream advanced setup | AceStream Guide', 'content' => 'buffering'));
});

//throttling page
$ruisseau->get('/throttling/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'throttling.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'ISP throttling of AceStream P2P | AceStream Guide', 'content' => 'throttling'));
});

//setup template array and get file modification time for http caching
function setupTemplate($ruisseau, $template)
{
	$templateArr = array('name' => $template, 'lastMod' => filemtime($ruisseau->config('templates.path') . $template) );
	return $templateArr;
}

$ruisseau->run();

?>