{extends 'layout.tpl'}
{block 'content'}
	<div class="jumbotron">
		<div class="container">
			<h1>Fix AceStream buffering</h1>
			<p>When you first install AceStream, if you don't have a very fast connection, you might experience some problems with buffering. This guide will help you fix the buffering.</p>
		</div>
	</div>

	<div class="container">
		<h2>Best AceStream settings for streaming</h2>
		<p>Now that you have AceStream installed, open AceStream from your Windows menu, or launch it by clicking on an AceStream link on your favourite streaming site.</p>
		<p>The default AceStream options are sub-optimal and can you give you problems with streaming, but let's fix that.</p>
		<p>To open the AceStream options panel, look for the AceStream icon in your Windows tray and right click the icon :
		<img src="http://doyle.mabujo.com/acestream/img/acestream_screenshots/acestream_right_click_open_options.png" class="img-responsive" alt="Right click the AceStream icon to open the options panel"/>		</p>
		<p>If you don't see the icon on the tray when you are running AceStream, Windows could have hidden it. Use the up arrow to the left of the tray and click Customise. Then set AceStream to always be shown in your tray.
		<img src="http://doyle.mabujo.com/acestream/img/acestream_screenshots/acestream_always_show_icon.png" class="img-responsive" alt="Always show AceStream icon in Windows" />
		</p>
		<h3>Ace Stream HD Options</h3>
		<p>This panel is where we shall setup some basic options for AceStream :</p>
		<img src="http://doyle.mabujo.com/acestream/img/acestream_screenshots/acestream_options.png" class="img-responsive" alt="AceStream options panel"/>
		<p>The first 3 options are self explanatory, and for our purposes we don't much care about them, so make them unchecked.<p>
		<p>Note : in theory "Start with sufficient speed only" could be useful - using this setting means that AceStream will wait until we have enough video in the buffer before it starts playing, as it continues to buffer more. In practice though if (even after setting AceStream up properly) you have an insufficient connection, even waiting for an initial chunk to buffer won't do you much good if subsequent chunks don't arrive in time - you will continue to suffer buffering problems.</p>
		<ul>
			<li>Play entertaining videos while prebuffering : <small>uncheck</small></li>
			<li>Start with sufficient speed only : <small>uncheck</small></li>
			<li>Automatically determine download limit : <small>uncheck</small></li>
		</ul>
		<h4>VOD/Live buffer</h4>
		<p>These options control how much of a buffer you want, in seconds. VOD buffer is I think not used for anything at this time, so we can leave it how it is.</p>
		<h5>Live buffer</h5>
		<p>Live buffer is an important setting as it determines how much time (in seconds) we want to use for our streaming buffer. The streaming buffer downloads segments to disk and then plays our stream from disk. If we have a poor connection and run out of buffer, the stream will pause to buffer. Here, mine is set to 30 seconds, so I will be 30 seconds behind the live broadcast. If you continue to experience problems, you can try increasing the live buffer, or if you have a very good connection, you can decrease the buffer to be closer to the live broadcast.</p>
		<ul>
			<li>VOD buffer, s : <small>10</small></li>
			<li>Live buffer, s : <small>30</small></li>
		</ul>
		<h4>Download and upload limits</h4>
		<p>Let's skip the disk cache limit option for a second, and take a look at our download and upload limits. </p>
		<p>As far as I can tell, these limits don't actually do anything. Set them both to 0.</p>
		<ul>
			<li>Download limit (Kb/s) (0 = no limit) : <small>0</small></li>
			<li>Upload limit (Kb/s) (0 = no limit) : <small>0</small></li>
		</ul>
		<h4>Disk cache</h4>
		<p>The two settings above and below the download and upload limit settings allow us to control the AceStream disk cache. The disk cache is where AceStream will store the live buffer when we are watching a stream.</p>
		<p>Using the Cache drive setting, we can choose which drive in our computer we want AceStream to store its buffer to. It will store the buffer in a hidden folder at the root of the selected drive (the folder is called "_acestream_cache_"). This defaults to your c: drive, but if you would like to store this temporary data on another drive, use this setting to do so. I'm using a separate partition for my AceStream cache, which is g: on my system.</p>
		<p>The disk cache limit allows use to set a maximum limit for how much space the cache can use. Here I'm using the size of my cache partition, but you don't need that much space, a couple of Gb should do it. You just need to make sure whichever drive you choose has enough free space to store the live buffer.</p>
		<ul>
			<li>Disk cache limit, Gb : <small>3</small></li>
			<li>Cache drive : <small>c: (or choose a cache drive)</small></li>
		</ul>
		<h4>AceStream login</h4>
		<p>On the AceStream site, you can create a username and password. These settings are used if you want to pay AceStream to disable advertisements on streams. There aren't many ads at the moment - there is usually one at the bottom when you open a stream, but it is easily closed.</p>
		<p>Creating an account and paying to remove ads does nothing to improve your stream quality or support the person who you are streaming from - the money would go to the AceStream developers. At this time there is little compelling reason to either create an account or pay to remove ads, so leave this blank.</p>
		<ul>
			<li>Login to the Ace Stream system : <small>blank</small></li>
			<li>Password : <small>blank</small></li>
		</ul>
		<h4>Apply settings changes</h4>
		<p>Once you have setup these AceStream options, click apply to save the options.</p>
		<p>Next, click 'Advanced...'; this is where we will setup the network settings for AceStream.</p>
		<h3>Advanced AceStream options</h3>
		<img src="http://doyle.mabujo.com/acestream/img/acestream_screenshots/acestream_advanced_options.png" class="img-responsive" alt="AceStream advanced options panel" />
		<p>The advanced options panel gives us three options, Port, Total max connects, and Max connects per stream.</p>
		<p>The port specifies which port AceStream will announce itself on to the internet. The port number itself is not important, as long as the port is not in use by another program behind your router. The port number you choose is important though, as we will need to know what the port number set here is later so that we can open that port on our router.</p>
		<p>Just leave the port how it is for now, but in the unlikely event you have problems later you could try changing it. If you want to use more than one computer in your network to watch streams at the same time, you should also set different ports for each computer.</p>
		<p>The other two settings on this page specify the number of peers we will allow AceStream to connect to per stream, and how many peers we allow AceStream to connect to in total (if we are connecting to multiple streams at once.</p>
		<p>With the settings below of 100 connections per stream and 400 connections in total, we can obviously watch up to 4 streams at once at 100 connections each. I wouldn't actually recommend this unless you're on a very good connection, as there is obviously overhead in keeping all of those connections open to other peers.</p>
		<p>The default setting of connections per stream is however a bit low, so try this around 100, to allow you to connect to more peers.</p>
		<p>It's worth noting that connecting to more peers doesn't necessarily mean we will get a faster download speed if the extra peers we connect to do not upload at a decent rate. </p>
		<ul>
			<li>Port : <small>8621</small></li>
			<li>Total max connects : <small>400</small></li>
			<li>Max connects per stream : <small>100</small></li>
		</ul>
		<h2>Opening the AceStream port on your router</h2>
		<p>Now that we know which port we are going to announce to the internet, we need to open this port on our router, and direct traffic on that port to our machine, so that the stream packets can be routed properly.</p>
		<p>How you go about opening a port will depend on the type, make, and model of your networking equipment. As mentioned, what we want to do is open a port to make a connection to our machine for the AceStream program. This is called a port forward. If you are connected directly to the internet via a modem, you may not need to do this step, but if you are behind any kind of router, you will probably need to open a port.</p>
		<p>Opening a port is a simple procedure that usually involves logging in to a web interface of your router, but as mentioned, different equipment and different providers have different ways of facilitating the same function. </p>
		<p>If you don't already know how to open a port on your router, you should look at the documention provided to you by your router manufacture or internet service provider. If you do not have this handy or cannot find the port forwarding instructions, the <a href="http://portforward.com/english/routers/port_forwarding/" target="_blank" >port forward site</a> provides guides for hundreds of makes and models of networking equipment, and you can probably find the information you need there.</p>
		<p>Once you have found out how to open a port on your router, you will need to know the port number you chose for AceStream, and the internal ip address of the computer you want to use AceStream on in order to open the port.</p>
		<h2>Enjoy your stream!</h2>
		<p>Now that you have configured AceStream and opened a port on your router, you should be able to enjoy streams in great quality and buffering free!</p>
		<p>If after following this guide you are still having problems with buffering, you either do not have a good enough connection or you may be suffering from throttling of peer-to-peer traffic by your internet service provider. To learn more about how to to diagnose and how you can resolve ISP throttling, consult our ISP throttling guide.</p>
	</div>
{/block}