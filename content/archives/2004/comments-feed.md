-----
kind: article
title: "Comments feed"
tags:
- technology
created_at: 2004/01/10
permalink: comments-feed
toc: false
-----

<p>I've been thinking about adding a feed for comments for some time, but some gentle prompting by <a href="http://cgi.synchrony.plus.com/blog/" title="diachrony">djn1</a>, and the example of his own feed encouraged me to try and find a solution. If you comment on an entry, it's nice to know when someone replies, without having to remember to check back with the page.</p>

<p>I wanted to have the comments displayed together with their respective entry to give some context, but the problem then is that the feed would keep showing as 'unread' every time someone added a comment. This could get annoying very quickly if you weren't interested in the comments on every entry. It would also lead to increased bandwidth usage on my side, which might start costing me money! I decided to use the method described by <a href="http://philringnalda.com/blog/2002/06/rss_feed_for_individual_entries_plus_comments.php" title="phil ringnalda dot com">Phil Ringnalda</a>. This gives each entry an individual feed, which has the entry itself as the first item, then each of the comments as successive items. I've added a link to the feeds on the individual entry page of each item, labelled 'RSS feed with comments' (it's next to the link for Trackbacks). So if you've commented on an entry and you want to be informed when someone replies, just drag this link to your favourite RSS reader.</p>

<p>Let me know what you think about this method. One disadvantage is that it increases the number of feeds you'll have in your reader if you want to keep track of multiple entries. However, a nice side effect is that it has made me implement permalinks for individual comments, which I've meant to do for a long time. If you'd like to refer to another comment in your own, the link is the date posted below the comment body. I've left the standard feed as it was (the link is the RSS button near the bottom of the sidebar), so you can subscribe to that too.</p>
