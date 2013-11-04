<!-- Static navbar -->
<div class="navbar navbar-fixed-top navbar-default">
	<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="{siteUrl}">AceStream Guide</a>
	</div>
	<div class="navbar-collapse collapse">
		<ul class="nav navbar-nav">
			<li {if $content eq 'index'}class="active"{/if}><a href="{siteUrl}">Home</a></li>
			<li {if $content eq 'about'}class="active"{/if}><a href="{siteUrl}about/">About</a></li>
			<li {if $content eq 'contact'}class="active"{/if}><a href="#contact">Contact</a></li>
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Guides <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="{siteUrl}buffering/">Fix AceStream Buffering</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">AceStream on Linux</li>
				<li><a href="{siteUrl}linux/">Linux AceStream install</a></li>
				<li><a href="{siteUrl}linux/#browser">Linux AceStream browser handler</a></li>
			</ul>
			</li>
		</ul>
	</div><!--/.nav-collapse -->
	</div>
</div>