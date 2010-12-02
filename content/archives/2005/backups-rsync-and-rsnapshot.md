-----
kind: article
title: "Backups, rsync and rsnapshot"
tags:
- general
created_at: 2005/06/17
permalink: backups-rsync-and-rsnapshot
toc: false
-----

<p>I've just taken delivery of a spanking new 500GB LaCie Firewire drive for work. I've partitioned it in two, with the bulk of the space allocated for video data, but I've also made a backup partition for my laptop. I've wanted to try using <a href="http://rsync.samba.org/">rsync</a> for ages, but I never really had a large enough hard drive spare to try it.</p>

<p>The great thing about <code>rsync</code> is that you can do frequent incremental backups (keeping snapshots of the state of your drive at various time intervals), while not using much more space than a single backup, <strong>and</strong> while allowing you to easily restore a whole directory structure without having to piece together backup sets.</p>


<p>It manages this feat by using hard links, and rotating backup sets. In the latest set, only the files which have changed are backed up, but hard links are created for the rest of the files, so the latest backup appears to be (and to all intents and purposes <em>is</em>) a full copy of the source.</p>

<p><code>rsync</code> is included in Tiger, but it can be a little tricky to set up a script to back everything up, particularly if you want to back up multiple but separate directories to a single destination. However, <a href="http://www.rsnapshot.org/">rsnapshot</a> provides a nice, easily configured wrapper around <code>rsync</code>. You can configure the number of hourly, daily, weekly and monthly backups that get rotated, and you can set multiple source paths to backup.</p>

<p>It works very nicely, but I've been trying to think of a good way to automate starting it. Now that <code>cron</code> is deprecated in Tiger, I'm looking in to using <code>launchd</code> to run the backups. The tricky part is that I only want it to run if my Firewire drive is mounted, which is only more or less in office hours. <code>rsnapshot</code> does come with a little script that checks whether the snapshot path is mounted before it runs the process itself, but it would be nice to do it within <code>launchd</code>. There's the <code>watchpaths</code> property which is supposed to only start the process if a path changes (which would happen if my drive was mounted). The other snag is that I don't think that <code>launchd</code> yet supports the '*/4' style of time intervals (i.e. every 4 hours).</p>

<p>I'll try to construct something over the weekend, and test it on Monday. If anyone has any tips for using <code>launchd</code> as a cron replacement, let me know! </p>

