---
created_at: 2010/11/01
kind: article
publish: true
tags: [blogging, nanoc]
title: "All Change Again"
permalink: all-change-again
---

You'll have noticed that the site looks a bit different again, and that there are a few structural changes too. I've been tinkering again, I'm afraid!

I've been writing this blog for just over eight years now, which I wouldn't believe myself if the [evidence][] wasn't in front of me. In that time, the blog has been powered by a variety of different bits of software. I started with [Tinderbox][], exporting text notes to HTML and then uploading them to form a static site. Then I moved to [Movabletype][], [WordPress][] and most recently [ExpressionEngine][]. The last three were all (in different ways) database-backed dynamic sites, where the 'pages' of the site are generated dynamically from the content in a database. This has the advantage of being quite flexible, but the disadvantage of being slower to load, more vulnerable to hacking attacks and if &mdash; like me &mdash; you are not very expert with databases or PHP, more difficult to adapt and customize.

The reason that I originally moved away from a static site was that I wanted to incorporate comments and I wanted to be free to update my blog when I wasn't at my own computer, through a web-based control panel. However, I've realised over the years that I have almost never updated my blog from another computer (even though I can), and now that I'm using [Disqus][] to power the comments, I can do that on a static site. So it has been in the back of my mind for a while that I'd like to try one of the new static site generators, and simplify the whole thing in the process.

Don't get me wrong: [ExpressionEngine][] is a fantastic bit of software, and tremendously powerful. The problem is that I really don't need that level of power for my simple blog, and I've ended up putting off making changes because it was rather daunting poking around in the guts of the system. I don't really know PHP well enough to customize it either, which has meant I've been reliant on other people to code plug-ins and so forth.

Then I found [nanoc][], which is a Ruby powered static site generator. It is very adaptable and extensible, and because I know Ruby fairly well, I can actually do that myself. I played around with a bit, and then decided to take the plunge. Inevitably, given the length of time I have been running the site, and the number of different methods I have used to generate it, the posts themselves have got into rather a mess. I took the opportunity of exporting my posts to clean up some of the old posts. It took a long time, and the process wasn't perfect, but things are much neater now than they were. I can't believe that I've written nearly 1500 posts here!

I'll write more about [nanoc][] in due course, and I'll also clean up the site a bit more, tweak the styling and so on. I'd like to integrate my activity elsewhere (on Tumblr, flickr, Twitter, Last.fm etc.) into the site a bit more closely, and I've got a few ideas about how to do that. There are bound to be a few things that I've broken along the way, so do let me know if you find serious wonkiness.


[evidence]: http://rousette.org.uk/blog/archives/my-first-post/
[Tinderbox]: http://www.eastgate.com/Tinderbox/index.html
[Movabletype]: http://www.movabletype.org/
[Wordpress]: http://wordpress.org/
[ExpressionEngine]: http://expressionengine.com/
[Disqus]: http://disqus.com/
[nanoc]: http://nanoc.stoneship.org/
