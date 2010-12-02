-----
kind: article
title: "Backing up MovableType"
tags:
- technology
created_at: 2003/11/18
permalink: backing-up-movabletype
toc: false
-----

<p>Continuing on the <a href="http://www.rousette.org.uk/mt-static/blog/archives/000512.html">theme of paranoia</a>, I've been paying serious--and very overdue--attention to backing up my MovableType installation and entries[1]. I've been really bad at remembering to export and backup the entries, and the thought that I could--at any moment--lose weeks of considered (and ill-considered) entries and comments started to really bother me.</p>

<p>I did a search on the MovableType forums for an automated solution, and came upon <a href="http://www.virtualvenus.org/archives/0309/create_an_export_blog.php">this brilliant solution</a> by <a href="http://www.thegirliematters.com/">girlie</a> at Virtual Venus. You can read the full story if you follow the link, but it involves setting up a new blog with index files for each blog you want to back up, which writes a text file in the export format. There's a rebuilding script which you can schedule with <code>cron</code>, and I've also set up a cron script running from my own machine to suck the backed-up files off the server and on to my computer using <code>curl</code>--just in case the server bursts into flames, or something. I did say that I was feeling a bit paranoid.</p>

<p>Girlie also has a cunning plan <a href="http://www.thegirliematters.com/tips/archives/0309/configuration_listing_with_php_and_mysql.php">here</a> to allow you to view your configuration settings and save them to a file too. Finally, I now have my templates linked to external files (which I'll also back up), so I should be ready for any self-inflicted disaster.</p>

<p>[1] It must be the time of year, or something. In times gone by, people would have carefully preserved and stored their food at this time of year for the hard, lean season ahead. Perhaps my urge to back up my computer is a modern echo of this folk memory.</p>


