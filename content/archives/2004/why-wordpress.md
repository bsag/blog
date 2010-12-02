-----
kind: article
title: "Why WordPress?"
tags:
- wordpress
created_at: 2004/04/11
permalink: why-wordpress
toc: false
-----

<p>I said earlier that I would write about why I've made the move from <a href="http://www.movabletype.org/" title="Movabletype">Movabletype</a> to <a href="http://wordpress.org/" title="WordPress">WordPress</a>. I want to say right at the start that my decision really isn't a criticism of Movabletype. It has served me extremely well for more than a year, and has made my life immeasurably easier. But one thing I've found as I've been keeping this blog is that your needs (and skills) change as time goes on, so that you can't necessarily forsee what you will need in a blogging tool a year or two years down the line. The thing that prompted my itchy feet in the end was the problem of rebuilding the site.</p>

<p>Movabletype (MT) and WordPress (WP) have a lot of similarities (indeed, many of the new features I've included in my new design could have been accomplished with MT), but one fundamental difference: MT produces static web pages, and WP produces dynamic ones. This difference is an important one; every time the content of the page needs to change in a static system (which can happen quite frequently with a weblog with comments, trackbacks and so on), the entire page needs to be rebuilt. If you have monthly and category archives, those pages need to be rebuilt too. Rebuilding is pretty speedy when you have a small number of posts, but it gets slower as time goes on and you accumulate more content. However, with a dynamic system, the changes are made the instant someone reloads the page.</p>

<p>I tried a number of different blogging tools, but eventually settled on WP after setting up a test blog and playing with it for a while. It's a great system &mdash; extremely easy to install and configure, and yet with a lot of scope for advanced customization. Better yet, it's Open Source, so anyone can contribute hacks and fixes for it. It's also free as in beer. Not that I begrudge paying for software, especially something that I depend on every day. I donated to MT when I started using it, and I consider that money very well spent.</p>

<p>So, what's so great about WP? As I said, many of the features can be achieved in MT with <a href="http://mt-plugins.org/" title="MT Plugins">plugins</a>, but these are the main virtues of WP âout of the box':</p>

<ul>
<li>It's very easy to install &mdash; you just upload the files to your server, optionally change the permissions on one file and add the details of your mySQL database, and that's it. Very simple.</li>
<li>The default templates are very straightforward. You only really need to set up two templates, and the default templates are pretty good without any tinkering at all.</li>
<li>The default templates and stylesheet are standards-compliant out of the box, and despite my best efforts, I didn't break the compliance with all my tinkering. After I'd done the re-design, I braced myself for the process of validation and the pages of errors that it would inevitably throw up. I was astounded when there were only a couple of minor errors on the pages and <acronym title="Cascading Style Sheets">CSS</acronym> stylesheet, which were easily fixed.</li>
<li>The admin interface is quick to load and simple to navigate. It's also quite easy to incorporate an âinterface page' for your own functions, so hacks can be integrated properly.</li>
<li>There's an integrated link manager which makes it easy to keep your blogroll up to date and to include it in flexible ways into your pages.</li>
<li>Characters like ampersands and quote marks are auto-converted to proper HTML entities.</li>
<li>You can choose to have text smilies auto-converted to graphical smilies (this works in the comments too &mdash; try it!)</li>
<li>There are various measures against comment spam. It protects against comment-flooding (so spambots can't submit more than one spam comment every 10 seconds) and automated submission via a script rather than the form on the page, and you can set comment moderation so that incoming comments are held in a queue until you approve them. If things get really bad you can ensure that only people who have registered with you can post <del datetime="Thanks Dan!">spam</del> comments. This is another benefit of a dynamic system; if you hold a comment in a queue or it gets flagged as spam, it doesn't get published to your page in the first place, thus denying the spammers even a few minutes of Google page rank benefits.</li>
<li>You can nest categories, which makes a lot more sense than a flat list in many instances.</li>
<li>There is a really easy import script for MT entries. It took no more than a few seconds to import about 550 posts and about 1800 comments. Flawlessly.</li>
<li><acronym title="Uniform Resource Identifier">URI</acronym> re-writing, so that each entry has a search engine- and human-friendly <acronym title="Uniform Resource Identifier">URI</acronym>. You'll see that individual entries have the format <code>../archives/year/month/day/title-of-post/</code> and you can view all the posts for a particular month or day by entering part of the <acronym title="Uniform Resource Identifier">URI</acronym> (e.g. <code>../archives/2004/03/</code>).</li>
</ul>

<p>Those are just the features that are built in; you can add a lot more functionality with <a href="http://wordpress.org/support/10" title="Plugins and Hacks Forum">Hacks</a>, which is remarkably easy &mdash; even for someone who doesn't know PHP (of which more later).</p>

<p>I'm really pleased with the move. I think that I've got all of the functionality that I had before and a bit more, and I feel confident that the system will scale well as the content builds over time. The only major thing WP lacks at the moment is the ability to run multiple blogs from one installation (though you can install it multiple times in different directories and share one mySQL database). I wouldn't be surprised if this feature gets added at some point.</p>

<p>Over the next few days, I'll provide a bit more detail of how I set the WP blog up, for anyone who is interested.</p>
