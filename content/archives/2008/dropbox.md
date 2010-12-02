-----
kind: article
title: "Dropbox"
tags:
- technology
- software
created_at: 2008/10/29
permalink: dropbox
toc: false
-----

<p>Like many people who work on more than one computer at more than one location, I've had a perennial problem with making sure that all the files I need are on all the computers I use. My <a href="http://www.rousette.org.uk/blog/archives/rsyncing-two-computers-via-a-server/">first attempt</a> used a home-brewed set of rsync scripts to sync files up and down from Joyent's Strongspace file server. For various reasons, I then switched to using a <a href="http://www.rousette.org.uk/blog/archives/synching-my-macs-part-two/">portable hard drive</a> with <a href="http://www.econtechnologies.com/site/Pages/ChronoSync/chrono_overview.html">ChronoSync</a>. I used that successfully for quite a while, but it meant that I had to carry a fragile hard drive around, and it took a while to sync things up and down at the beginning and end of each day.</p>

<p>Recently, there have been a rash of services which sync your data between computers, using an online store as an intermediary. I had a trial of <a href="http://www.sugarsync.com/">SugarSync</a> and liked it a lot, but when I tried <a href="https://www.getdropbox.com/">Dropbox</a>, I was smitten. Ironically, it has fewer features than SugarSync (though many of the missing features are in development at the moment), but there's something about the transparency of the way that it works that appealed to me. I liked it even better when -- after signing up for a beta with 2 GB of free space, I was entered into a competition to win 50 GB of space for a year and won! 50 GB is more than enough to hold everything I need to sync in my home folder, and gave me the opportunity to really try it out properly.</p>

<p>The way it works is very simple: you install the Dropbox client, which just shows itself as a menu bar item in Mac OS X. This creates a "Dropbox" folder in your home folder, though you can relocate it if you want. Everything you put into the Dropbox is automatically synced to all other computers running Dropbox. If you put stuff in <code>~/Dropbox/Public</code> it's accessible to anyone to whom you give the URL, and a quick right-click on the file copies that URL to the clipboard.</p>

<p>At the moment, you can't choose to sync existing folders outside your Dropbox, but a clever trick with symlinks allows you to make it work. In the instructions, you're told to create a symlink in the original location to the original file in the Dropbox, but I do it the other way around (so that my files remain in their original locations), and it works perfectly. So in my Dropbox, I have a collection of symlinks to other folders, which means that everything I want to sync between computers (all of Documents, Music, Movies, Pictures, a few folders in Library and a few in Library/Application Support) get synced up.</p>

<p>It keeps revisions of files, so if I want to go back to a previous revision, I can, and it creates a copy if it can't reconcile changes made concurrently. In practice, I've never had a problem, and it has all worked transparently. Because it's constantly syncing changes, it takes very little time to sync the latest changes at the end of the day, so it's much faster than my previous methods. Likewise, if I lose the network connection for a while, it's not a serious problem, because syncing will just catch up as soon as I get back online. Also, if Dropbox went away tomorrow, all my files would be exactly where they've always been: on my hard drive. I'd just lose the syncing part and have to go back to one of my previous methods. I've also found the public box very useful when collaborating on documents with colleagues, rather than emailing attachments.</p>

<p>There are some interesting new features planned, the most useful of which will be the ability to specify folders to sync, without having to use symlinks, but it works so well right now, that I'm very happy with it as it is.</p>


