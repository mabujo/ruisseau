{extends 'layout.tpl'}
{block 'content'}
	<div class="jumbotron">
		<div class="container">
			<h1>AceStream Guide</h1>
			<p>AceStream is a peer-to-peer streaming video application that allows you to view high quality video streams shared by other people.</p>
			<p>Our guide will help you to setup AceStream, so you can enjoy your stream easily and in the best quality.</p>
		</div>
	</div>
	{include 'adsense_top.tpl'}

	<div class="container">
		<h2>Advantages of AceStream</h2>
		<p>AceStream uses a peer-to-peer distribution similar to BitTorrent to share live video streams between users. This means that a streamer can set up an AceStream stream, and once users begin to watch the stream, they will help each other to view the stream by uploading the stream to other users.</p>
		<p>Thanks to this efficient peer-to-peer distribution model, streamers are able to provide streams to users at high bitrates, and this means a greater quality stream for the user.</p>
		<p>The majority of streamers are now using AceStream over SopCast as it offers higher quality, and due to it's distributed nature, better protection from content takedowns.</p>
		<h2>Installing AceStream</h2>
		<h3>Windows</h3>
		<p>Installing AceStream on Windows is as simple as installing any other program. First, use one of the AceStream download links below to download the AceStream executable, and then run the installer.</p>
		<h4>AceStream for Windows download links</h4>
		<ul>
			<li><a href="http://dl.acestream.org/products/acestream-full/win/latest">Official AceStream site download</a> (can be slow at peak times).</li>
			<li><a href="http://dl.acestream.org/products/acestream-full/win/latest/torrent">AceStream official .torrent download</a>
			<li><a href="https://mega.co.nz/#!r4J0RIQY!LQheAUIMtTB70r4LqMs0Gng288VsQhMALc01F66p81s" target="_blank">Mega AceStream mirror</a></li>
			<li><a href="http://www.multiupload.nl/H8KUP561O3" target="_blank">MultiUpload.nl AceStream mirror</a></li>
		</ul>
		<p>Once you have installed AceStream, follow our <a href="{siteUrl}buffering/">advanced setup guide to fix AceStream buffering problems</a>.</p>
		<h3>Linux</h3>
		<p>AceStream is available for Linux. Follow our <a href="{siteUrl}linux/">Linux AceStream installation guide</a> to install AceStream on your system</p>
		<h3>Mac OS X</h3>
		<p>AceStream is currently not available for Macintosh computers, so to install AceStream on a Mac, you will need to use some sort of virtualization software, such as BootCamp or VirtualBox to install a Windows/Linux virtual machine in which you can run AceStream.</p>
		{include 'adsense_home_bottom.tpl'}
	</div>
{/block}