-----
kind: article
title: "Do not adjust your sets"
tags:
- technology
created_at: 2003/04/08
permalink: do-not-adjust-your-sets
toc: false
-----

<p>If you've just seen some odd layout things happening on this set -- don't worry -- it's not your browser. I've been tinkering with the positioning CSS to try to sort out a very frustrating bug which happens in IE6 on XP and a few other IE Win incarnations, that several people have reported to me. What happens is that once the browser has rendered the page to the bottom of the sidebar, it just sits down, pouts and refuses to render the rest of the content. Sometimes a force reload will coax it into rendering the whole thing, but sometimes it doesn't. Obviously, this means that some IE Win users never get to read the content which extends below the bottom of the sidebar.</p>

<p>I found a <a href="http://www.evolt.org/article/MSIE6_bug_with_floating_divs_and_spacers/17/23899/index.html">some discussion</a> of what might be the same problem, but none of the possible fixes worked. This page is structured as follows: the main content (the entries) have a width of 60% of the page, then the sidebar has a width of 250px and is floated right with a left margin of 65%. I'm not experienced enough with CSS to know if this is a totally klutzy way to go about things, but -- in my defence -- it renders fine on all browsers other than the IEWin browsers mentioned. This is a cry for help: if anyone has any suggestions at all that might help, you'll earn huge quantities of Bsag Brownie points and the gratitude of readers using IE.</p>


