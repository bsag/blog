-----
kind: article
title: "Closing comments"
tags:
- wordpress
created_at: 2004/05/19
permalink: closing-comments
toc: false
-----

<p>I'm fed up to the back teeth with comment spammers, so I decided to do something about it. I do use the <a href="http://dinki.mine.nu/word/" title="wpblacklist plugin - fight comment spam">wpblacklist</a> plugin, and that's a great help, but you still miss one or two items when a new spammer appears and you haven't updated your list. The majority of spam comments are made on old entries, so I decided to set up automatic closing of comments, as described <a href="http://wiki.wordpress.org/index.php/Auto%20shutoff%20comments" title="WordPress wiki - Auto close comments">here</a>. I've set it to close comments after 14 days &mdash; that seems about right to me, but if anyone wants me to extend it a bit, just let me know. I've put a line in my cron file to run the script every day like this:</p><pre><code>GET http://pathtoscript/auto-close.php > /dev/null 2<&1</code></pre><p>It goes without saying that anybody (except spammers!) who wants to make a comment on a closed entry only has to email me, and I'll put the comment in myself.</p>


