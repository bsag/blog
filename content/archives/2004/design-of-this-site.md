-----
kind: article
title: "Design of this site"
tags:
- wordpress
created_at: 2004/04/13
permalink: design-of-this-site
toc: false
-----

<p>I thought that I'd post some brief comments about the new design of this site (later, I'll post about the <a href="http://wordpress.org/" title="WordPress">WordPress</a> Hacks I've used). As much as anything, it will serve as a reminder to myself when I forget how the heck I did something. I also found that when I saw something I liked on another site, I missed an explanation of how it was done. I plan to link to this post on the <a href="http://www.rousette.org.uk/blog/about/" title="About this site">About</a> page, so that anyone who gets the same feeling coming here will have some answers.</p>

<p>I had started to feel that my old design was a bit sombre and tired. It used a fluid design which was quite nice, but difficult to do well in all browsers, and only really looked best at a particular window width. I had admired a number of other sites which used centred designs, and so decided to use that structure. The main content is 800 pixels wide, and so should work well on low resolution screens, but it looks nicer on higher resolution screens or larger windows. I came across a <a href="http://www.alistapart.com/articles/fauxcolumns/" title="Faux Columns">fantastic tutorial</a> on <a href="http://www.alistapart.com/" title="A List Apart">A List Apart</a> about faking columns so that the background colour for both extends all the way to the bottom, regardless of the amount of content in them. It's explained very clearly in the tutorial, but to summarize, you produce a PNG image which is the width of your content, but only a couple of pixels high. This has the two colours and borders on it, and also a drop shadow on the outside of the content. All you need to do is set this image as the background of the content and tile it vertically. I was surprised how well that worked.</p>

<p>I went a bit drop shadow crazy actually, and added a drop shadow to images using <a href="http://www.alistapart.com/articles/cssdropshadows/" title="CSS Drop Shadows">this method</a> (another good ALA article), as well as having drop shadows in Safari on the date header <a href="http://www.mediaworkers.de/text-align/shadow.html" title="text-align: Making shadows">like this</a>. I've also added a graphical bullet to unordered lists in the main body of the text like this:</p>

<pre><code>.storycontent ul li {
    list-style-image: url(images/bullet.gif);
    }
</code></pre>

<p>The rest of the changes are fairly cosmetic, with some brighter colours for links and highlights, and  with navigation links and the sidebar content styled as unordered lists: this makes much more sense semantically. Overall, I'm pretty pleased with the way it turned out. It looks fine in Opera, Firefox (and other Mozilla browsers), but it probably looks at its most spiffy in Safari. Anyone with any experience of web design won't be at all surprised to hear that all kinds of things break in Internet Explorer. I've tried to mitigate them where possible, but I refuse to break a simple, standards-compliant design just to accommodate a broken browser, especially when there are such good (and free) alternatives.</p>
