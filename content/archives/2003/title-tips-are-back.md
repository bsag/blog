-----
kind: article
title: "Title tips are back"
tags:
- technology
created_at: 2003/11/27
permalink: title-tips-are-back
toc: false
-----

<p>I used to have <a href="http://www.rousette.org.uk/mt-static/blog/archives/000217.html">transparent title tips</a> on this weblog--a tip I picked up at <a href="http://www.kryogenix.org/code/browser/nicetitle/">kryogenix.org</a>. I removed it because it seemed to be causing some odd behaviour on IE6. However, there's a modified version at <a href="http://www.1976design.com/blog/archive/2003/11/21/nice-titles/">1976design.com</a> which doesn't use a PNG background, and has a few more niceties.</p>

<p>I don't know if this will work any better (comments from IE6 users would be very welcome), but I thought it might be worth a go. This version has rounded corners and transparency to the background if you're using Mozilla, and an opaque background if you are using any other browser. <em>Unless</em> you are using Safari 1.1; in a moment of inspiration, I realised that I could use the new <a href="http://www.mediaworkers.de/text-align/opacity.html">element transparency feature</a> of Safari 1.1 to make the title background semi-transparent, like so:</p>

<p><code>background-color: rgba(51,51,51,0.8);</code></p>

<p>I've tried it in IE5x on the Mac and it doesn't seem to break anything, so we'll see how it works out. I'm living on the bleeding edge here, folks, so feel free to shout at me if (when, perhaps) it messes up anything horribly. I'm just in one of those, "ah, give it a go, why not?" kinds of moods, but in case it does all go a little bit <a href="http://www.bbc.co.uk/dna/h2g2/alabaster/A649">Pete Tong</a> I've only applied the rule to the index page for now. Hover away!</p>


