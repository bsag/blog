-----
kind: article
title: "Big Cat Scripts Plugin"
tags:
- technology
created_at: 2004/01/24
permalink: big-cat-scripts-plugin
toc: false
-----

<p>I've been a long time user of Ranchero Software's <a href="http://ranchero.com/netnewswire/" title="Ranchero Software - NetNewsWire">NetNewsWire Lite</a>, so I'm a little surprised that I haven't cottoned on to <a href="http://ranchero.com/bigcat/" title="Ranchero Software - Big Cat">Big Cat Scripts Plugin</a> before now. I've been reading up a bit on Applescript, and saw Big Cat mentioned as an alternative way to launch scripts in a contextual menu. This seems to have a couple of advantages over Apple's Script Menu which appear on the Menu Bar:</p>

<ul>
<li>The menu pops up under the pointer, so you don't have move over to the other side of a screen and navigate a long list</li>
<li>You can select files in the Finder or text for it to act on &mdash; this seems much more straightforward than the Script Menu method (though it's perfectly possible that I have just misunderstood the latter)</li>
</ul>

<p>All you need to do is to write Applescripts (or shell scripts) and put them into either the 'Files' folder or the 'Text' folder in "~/Library/Application Support/Big Cat Scripts/". The mention of shell scripts intrigued me. It didn't mention Perl specifically, but I guessed that it should work with any of the scripting languages natively supported by MacOS X, so I decided to give it a try. The other shell script examples seemed to pass the selected files/text as command line arguments, so I knocked up the following little script in Perl:</p>

<pre>
<code>
#!/usr/bin/perl
foreach (@ARGV) {
    exec `chmod +x $_`;
}
</code>
</pre>

<p>I was so chuffed when it worked. It takes each of the selected files and makes them executable. Yes, I know that I could do that in the terminal. Yes, I know that most of this Perl script isn't Perl. Yes, I know it will fail horribly in all sorts of circumstances. But it's all mine. It's quick and dirty, and much easier than navigating to the paths of my Perl scripts and making them executable by hand. I've got big plans for a lot more of these little snippets, as well as brushing up the MakeExec example above to test whether it's operating on a text file and other niceties. I know what <em>I'm</em> going to be doing for the rest of the weekend...</p>

<p><strong>Update</strong>: I'm such an idiot that I forgot I had read all about Big Cat less than two months ago on <a href="http://homepage.mac.com/pete.boardman/weblog/100047.html" title="Pete's Weblog - Finder Additions">Pete's weblog</a>--this is a sign of senility, for sure. So there should have been a [via <a href="http://homepage.mac.com/pete.boardman/weblog/100047.html" title="">Pete's weblog</a>] at the bottom of this entry. Though he is currently at a Typepad blog <a href="http://ambient.typepad.com/petes_log/" title="pete's log">here</a>. OK, I'll shut up now.</p>


