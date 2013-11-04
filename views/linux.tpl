{extends 'layout.tpl'}
{block 'content'}
	<div class="jumbotron">
		<div class="container">
			<h1>AceStream on Linux</h1>
			<p>AceStream is fairly easy to install on Ubuntu and Debian, follow our guide to install AceStream on your system.</p>
		</div>
	</div>

	<div class="container">
		<h2>Installing AceStream on Ubuntu</h2>
		<h3>Ubuntu 13.10</h3>
		<p>There is currently not an AceStream package for 13.10 (Saucy) in the repo, so let's use 13.04.</p>
		<h4>Adding AceStream repo to sources.list</h4>
		<p>Open a terminal and type <code>sudo gedit /etc/apt/sources.list</code>.</p>		
		<p>At the bottom of the file, add <pre>#AceStream
deb http://repo.acestream.org/ubuntu/ raring main</pre> then save and close the file.</p>
		<p>Now we need to add the repository key to our keyring, so enter <code>sudo wget -O - http://repo.acestream.org/keys/acestream.public.key | sudo apt-key add -</code> into your terminal and hit enter.</p>
		<h4>Install AceStream</h4>
		<p>Next, we need to update the local apt repository with the repository we have added, so type <code>sudo apt-get update</code> and hit enter.</p>
		<p>To install acestream, type <code>sudo apt-get install acestream-full</code> and hit enter.</p>
		<h4>Unmet dependencies</h4>
		<p>If you get an error like this : 
		<pre>The following packages have unmet dependencies:
acestream-player-data : Depends: libdvbpsi7 (>= 0.2.0) but it is not installable
		E: Unable to correct problems, you have held broken packages.</pre> then we are missing a package required by AceStream and we will need to install the missing package before we can go ahead with the AceStream installation.</p>
		<p>We can get the libdvbpsi7 package from <a href="http://www.ubuntuupdates.org/package/core/precise/universe/base/libdvbpsi7">this site</a>. Just navigate to that page and click the deb package for your architecture (32 or 64bit) under "Download 'libdvbpsi7'". Once the file downloads, you can install it with the Ubuntu software centre.</p>
		<p>With that package installed, you should be able to run <code>sudo apt-get install acestream-full</code> again in your terminal to install AceStream.</p>
		<h2>Adding browser handler for acestream:// links</h2>
		<p>You're probably going to want to add a handler for your browser, so that when you click an AceStream link, it will be opened up in the AceStream player.</p>
		<p>To do this click on any AceStream link in your browser, and when the Launch Application dialog displays, click to choose an application. Next, navigate to /usr/bin/ and select acestreamplayer. Click Open and your stream should start playing in the external AceStream player. You can also choose to have the browser remember this, so that in future, all acestream:// links launch directly in the player when clicked. </p>
		</div>

{/block}