-----
kind: article
title: "Upgrading TextPattern"
tags:
- blogging
created_at: 2005/02/26
permalink: upgrading-textpattern
toc: false
-----

<p>As some of you may know, I've been using <a href="http://textpattern.com/">Textpattern</a> to run my project site, <a href="http://www.rousette.org.uk/projects/">Tracks</a> (more on why I made the decision to use Textpattern rather than <a href="http://wordpress.org/">WordPress</a> later). Textpattern 1.0 RC3 came out last week, and when I eventually got around to thinking about installing it, and I couldn't believe how straightforward it was. I followed the instructions for upgrading via <code>svn</code> which are detailed on the <a href="http://forum.textpattern.com/viewtopic.php?id=6461">Textpattern forum</a>, and it was simplicity itself. I have shell access at TextDrive, so I just needed to log in via <code>ssh</code>, follow the instructions, and bingo &mdash; everything worked perfectly. Checking out a copy of Textpattern via <code>svn</code> is a great idea, because the next time it gets upgraded, I can just issue a <code>svn update</code> command in the directory, and it will automatically fetch the new versions of files for me, with the added benefit of being able to <code>svn revert</code> back to what I had before if something goes wrong.</p>


<p>There's also a nice new feature in the admin area called 'Diagnostics' which informs you about any configuration problems. It pointed me to a couple of outdated files which I was able to clean up quickly. It was very impressive. Not that this should be taken as any kind of commentary on the problems I had <a href="http://www.rousette.org.uk/blog/archives/2005/02/16/wordpress-15/">upgrading to WordPress 1.5</a> &mdash; I had hardly customised Textpattern at all, but my WordPress installation was really hacked about, so it's not surprising upgrading was a bit more trouble.</p>

<p>I decided to use Textpattern over WordPress for the Tracks site because it can handle separate sections quite easily. That means that you can set up mini 'sites within sites' which are structured and styled differently, and assign posts to them individually. Not that you can tell from my site, as all the sections (articles, news etc.) currently look the same! It's possible that you could achieve something similar with WordPress now that version 1.5 has the 'Pages' feature, but I don't think it would be quite as flexible. On the downside, the power and flexibility of Textpattern comes with a much steeper learning curve. It's not too hard once you've got the general idea, but it certainly isn't as easy to get to grips with as WordPress. I think I would recommend using WordPress for fairly standard weblog-type sites, and Textpattern if you need something a bit more modular. Both packages are free and Open Source, and are really a testament to the kind of powerful, polished software which the Open Source movement is turning out now.</p>

