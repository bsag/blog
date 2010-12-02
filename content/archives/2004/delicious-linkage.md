-----
kind: article
title: "del.icio.us linkage"
tags:
- blogging
created_at: 2004/12/30
permalink: delicious-linkage
toc: false
-----

<p>I used to use <a href="http://sourceforge.net/project/showfiles.php?group_id=55691&package_id=50728&release_id=233643">MagpieRSS</a> to pull my del.icio.us links into the sidebar on this site. It worked very well, but I've had problems <a href="http://www.rousette.org.uk/blog/archives/2004/04/28/fun-with-links/#comment-1982">in the past</a> when the cache directory has become unwriteable because of permissions problems. The feed is then fetched every time someone loads the page, which is obviously very bad news for Joshua's bandwidth, not to mention contravening the <a href="http://del.icio.us/doc/about">terms and conditions</a> for the del.icio.us service.</p>

<p>It seems that when I transferred all my files to the new server, the permissions on the cache directory got changed so that MagpieRSS was no longer caching the feed. This meant that Joshua had to ban my IP address until the problem was sorted out, as the feed was being fetched a couple of times a second. Urk. I don't want <strong>that</strong> to happen again. Since permissions can easily get messed up (and MagpieRSS doesn't give you any visible indication that caching is failing on the page), I've decided to use another method.</p>

<p><a href="http://www.bigbold.com/rssdigest/index.html">RSSDigest</a> allows you to enter an URL for a feed, and automatically build a bit of Javascript which will display that feed on your site. Unlike many similar services, it's highly configurable so that you can get exactly the look you want. It also lets you set a caching interval (I set mine to 120 minutes), so that the server for the feed isn't overburdened. Best of all, the caching is no longer my responsibility! It's a very useful service, and could of course be used to display any kind of RSS feed &mdash; not just a del.icio.us feed.</p>


