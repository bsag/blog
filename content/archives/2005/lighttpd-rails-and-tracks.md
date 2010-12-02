-----
kind: article
title: "Lighttpd, Rails and Tracks"
tags:
- ruby and Rails
created_at: 2005/02/18
permalink: lighttpd-rails-and-tracks
toc: false
-----

<p>[Posted to both here and on <a href="http://www.rousette.org.uk/projects/">Tracks</a>]</p>

<p>Jason, of <a href="http://textdrive.com/">TextDrive</a> fame, has been <a href="http://textdrive.com/weblog/article/26/benchmarking-lighttpd">singing</a> <a href="http://textdrive.com/weblog/article/27/yep-i-would-switch">the</a> <a href="http://textdrive.com/weblog/article/31/having-ones-own-lighttpd-and-running-it-too">praises</a> of <a href="http://lighttpd.net/">lighttpd</a> recently. In my experience, when Jason sings about something techie, it's worth listening.</p>

<p>A week or so ago, the Apache installation I use to test Tracks locally abruptly stopped working. I'm pretty sure that I just messed something up in my httpd.conf, but my motivation to go through it, find the problem and fix it was seriously lacking. So given all the great press that lighttpd has been getting, I thought I'd have a go at installing it on my machine last night.</p>

<p>It wasn't a very difficult process, but I ended up having to try to compile it a couple of times. The first time, I neglected to notice the part of the instructions <a href="http://wiki.rubyonrails.com/rails/show/Lighttpd">here</a> that said you needed pcre installed. Then I came up against a maddening error during <code>make</code> that I couldn't fix until I came upon this <a href="http://theexciter.com/archives/2005/02/09/installing-lighttpd-1310-on-osx/">excellent tutorial</a> by Johan on installing on OS X. He found the same error as me, but had made a patch to fix the problem. Bingo"

<p>Getting a working lighttpd.conf file was the next hurdle, but after some guidance <a href="http://bougyman.com/miscfiles/RailsonDebian.html">here</a> and a dash of trial and error, I managed to get Tracks running stably and beautifully on lighttpd. And fast. Boy, is lighttpd fast. I always found Apache to be really sluggish on my machine, but lighttpd running FCGI is really nippy and very economical on system resources.</p>

<p>So (as much for the fact that I'll probably forget what I did as anything else), here's my lighttpd.conf, set up to run a localhost install of Tracks on port 3000. At some point this weekend, I'll try setting it up for an externally-accessible configuration. The re-write rules were probably the hardest thing to sort out, but with the the advent of <a href="http://weblog.rubyonrails.com/archives/2005/02/15/routing-now-available-in-beta-gems/">Routing</a> in Rails which will make re-writing URLs a piece of cake"
