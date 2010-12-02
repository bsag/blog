-----
kind: article
title: "Synching my Macs part two"
tags:
- technology
- software
created_at: 2007/10/13
permalink: synching-my-macs-part-two
toc: false
-----

<p>Back in April, I wrote about <a href="http://www.rousette.org.uk/blog/archives/rsyncing-two-computers-via-a-server/">trying to sync two computers</a> via a server. It actually worked pretty well for quite a long time, but for a number of reasons, I've recently changed how I sync them. By coincidence, Merlin Mann <a href="http://www.43folders.com/2007/10/12/geek-throwdown-mac-sync">issued a Geek Throwdown</a> to ask people how they manage to sync two or more Macs, so I thought I'd write about my new method.</p>

<p>The old way involved using a self-written script to rsync files in <code>~/sync</code> to my <a href="http://www.strongspace.com/">Strongspace</a> online file space. This served as an intermediary, so that I would sync up my files to Strongspace before leaving work, then sync them down to my home computer on reaching home, reversing the process when leaving home again. As I said, it worked well, but had a few drawbacks.</p>

<ol>
<li>The obvious one is that it requires working Internet connection, and for Strongspace to be operational. This wasn't a practical problem for almost all of the time, but I've had a couple of instances (when I'm about to start work or leave for home, of course) when I lost the network or Strongspace went down.</li>
<li>The more pressing problem was that synching various files from <code>~/Library</code> required an elaborate system of symlinks, and I had to keep my documents folder in <code>~/sync/Documents</code>. This got rather tiresome to maintain, partly because quite a few applications dump files like templates into <code>~/Documents</code>, without allowing you to change the location.</li>
<li>I wanted to start syncing my Movies and Pictures folders as well, but that was going to strain bandwidth and storage space on Strongspace, and would require yet more symlinking jiggery-pokery.</li>
<li>By using rsync, I tended to lose the metadata associated with files (like Finder labels). This wasn't a huge deal, but it was annoying.</li>
</ol>

<p>So now I do what I probably should have done in the first place, and use a 2.5 inch external hard drive to sync more or less the whole of my home folder using <a href="http://www.econtechnologies.com/site/Pages/ChronoSync/chrono_overview.html">ChronoSync</a>. ChronoSync has quite useful and easy to understand rules for including or excluding items, so I can easily tell it to exclude all of <code>~/Library/Preferences</code> except for the Mail preferences for example. Otherwise, I include everything in home except for my <code>.ssh</code> directory and one or two other config files, my Preferences folder (because I have a lot of preferences set differently on the two computers), Logs and Caches. I've also stopped using .Mac sync, and now sync my Mail mailboxes and settings, Keychains, bookmarks (and history) and so on using ChronoSync. ChronoSync is very quick, and there's a 'Trial Sync' feature showing what is going to get copied in each direction, which is reassuring, particularly when you start using it. Deleted files get put in an '_Archived Items' folder, so if something does go wrong with the odd file, you can just drag it back to its rightful place.</p>

<p>It's pretty easy in practice. You have to remember to quit applications that might hang on to a database (like Address Book) before you sync, but the 'bi-directional sync' does a very good job of working out what needs to be updated in which direction. I sync up before I leave for work to the drive, connect the drive to my work Mac, sync again, then once again before I leave for home. It does mean that I have to carry the drive around, but it's pretty light and small, so that's not a huge problem. It also means that I miss out on having a current copy of my files genuinely offsite on Strongspace, but I suppose I could mirror my files once a day to Strongspace anyway.</p>

<p>I'm pretty happy with the way it's working. When I get home, I can open Safari, use the 'Reopen all windows from last session' command (I'm using the Safari 3 beta), and have all the pages I was looking at while at work open up, as well as the associated history. I've also changed the way I access my email, which I'll talk about in a later article.</p>


