<?php 

require 'vendor/autoload.php';

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

$ruisseau->get('/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'index.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'AceStream Guide', 'content' => 'index'));
});

$ruisseau->get('/about/', function() use ($ruisseau) 
{
	$template = setupTemplate($ruisseau, 'about.tpl');
	$ruisseau->lastModified($template['lastMod']);
	$ruisseau->expires('+1 week');
	$ruisseau->render($template['name'], array('title' => 'About AceStream Guide', 'content' => 'index'));
});

function setupTemplate($ruisseau, $template)
{
	$templateArr = array('name' => $template, 'lastMod' => filemtime($ruisseau->config('templates.path') . $template) );
	return $templateArr;
}

$ruisseau->run();

?>