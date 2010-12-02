-----
kind: article
title: "Ramblings about markup"
tags:
- wordpress
created_at: 2004/05/01
permalink: ramblings-about-markup
toc: false
-----

<p>You might notice that some of the comments in the list below each post now have white backgrounds, and others have grey backgrounds. There's a story behind this. I wanted to have a fancy alternating colour scheme for the comments, so that they would have alternating white and grey backgrounds<sup>1</sup>. Fine, I thought &mdash; this should be easy. Each comment has a comment ID number, so if I write a function to check whether the ID is even or odd, I can set the <code>class</code> attribute of the <code>li</code> element to 'even' or 'odd' appropriately. Sorted.</p><p>Or not. I had forgotten that the comment IDs are assigned as each comment is made over the whole site, so that the numbers on the comments <em>on each post</em> are not necessarily consecutive. So instead of a nice orderly alternation, I have a distressing degree of randomness. I'm sure that there must be a way to do this properly, using the <code>content()</code> attribute of lists, but I can't think how. Does anyone know how, or can you point me to a helpful tutorial on the subject?</p><p><sup>1</sup> In the memorable words of <a href="http://www.rousette.org.uk/blog/archives/2004/04/11/tinkering-finished/#comment-1898" title="Jingly">Pete</a>, the yellow was a bit jingly.</p>


