-----
kind: article
title: "Rsyncing two computers via a server"
tags:
- technology
- software
created_at: 2007/04/18
permalink: rsyncing-two-computers-via-a-server
toc: false
-----

<p>I wrote a while ago about my plans to get a new (desktop) computer at work, which would then require me to <a href="http://www.rousette.org.uk/blog/archives/unison/">synchronise some files</a> between the desktop and my laptop, which would remain at home for most of the time. I said at the time that Unison looked like the most likely candidate, but as you'll see below, there turned out to be problems with that approach. Because of the hassle and delay caused by my <a href="http://www.rousette.org.uk/blog/archives/broken/">laptop hard-drive failure</a>, and the Easter break, I've only just got the computer I ordered: a shiny new Intel 17" iMac. However, the enforced delay gave me quite a lot of time to sort try different syncing strategies out, so now that I actually <em>have</em> two computers to sync, it's working like a champ.</p>

<p>Working on the principle that someone else might find my experiences useful, I thought I'd document them here, including what I tried that <em>didn't</em> work for me.</p>


<p>To recap, my situation is this: I have an office desktop and a laptop (which will live mostly at home), and a generous amount of secure file storage space on <a href="http://strongspace.com/">Strongspace</a>. I wanted to use Strongspace to act as an intermediary in a two-way sync between the two computers, so that I would always have access to the latest files I need for work at either location.</p>

<h4>Option 1: Unison</h4>

<p><a href="http://www.cis.upenn.edu/~bcpierce/unison/">Unison</a> is unfortunately no longer installed on Strongspace, so the only way I could use it was by mounting my Strongspace locally using sshfs, for example with <a href="http://code.google.com/p/macfuse/">MacFUSE</a>. I tried it, but while it did work, it took forever to scan the files for changes on each run, even if there were very few changed files. This meant that it was impractical for daily use; the last thing I want to be doing at the end of a hard and busy day is watching Unison crawl through my directories while I wait -- impatiently -- with my coat on, ready to go home. I strongly suspect that this is an artefact of working with sshfs, and if I could use it the normal way with ssh, it would probably be fine.</p>

<h4>Option 2: Some kind of distributed Version Control System</h4>

<p>Subversion is a bit of a beast for this kind of thing, and I didn't really want .svn files in each of my directories with what would be such a huge working copy. So I looked at a number of the Distributed Version Control Systems (DVCS). However, I was a bit restricted in my choice, because it had to be something which only required the software to be installed on the local side, not on Strongspace. I tried <a href="http://bazaar-vcs.org/">Bazaar</a> which I liked a lot, but ultimately, I decided that it wasn't quite right for what I wanted to do.</p>

<p>In testing it, I had a problem (almost certainly something I did wrong, though I don't know what), which resulted in me being unable to update the repository or repair the problems with the local working copy. This happened just before my hard drive died, and by the time I got things running again, I decided that, while having my files versioned would be a nice side-effect, it wasn't the main aim of the game, and I'd probably be better off with a simpler system. Another drawback inherent in using a DVCS in this way (with a central repository and local working copies) is that you don't have easy access to the actual files on the server. This might be very important if there was some catastrophic failure locally where something went wrong with Bazaar, or even if I just wanted to grab a couple of files from the server while at an internet caf&eacute;, or using a friend's computer.</p>

<p>Which brings me back to good 'ole <a href="http://samba.anu.edu.au/rsync/">rsync</a>:</p>

<h4>Option 3: rsync</h4>

<p>I'm slightly abusing rsync, because it isn't really intended for two-way syncing between three computers. However, it can work quite nicely with a bit of care and discipline.</p>

<p>The idea is to use Strongspace as a central hub which gets updated with changes from either computer, but which is not directly modified outside the syncs. At the end of the day at work, I rsync-up my changes to Strongspace, using the <code>-delete</code> option to ensure that I'm mirroring the directories exactly. I then go home and rsync-down the latest changes to my laptop, again using <code>-delete</code>. When I finish at home, I rsync-up, and so it goes on.</p>

<p>There are three slightly tricky issues:</p>

<ol>
<li>Because I'm using the <code>-delete</code> option, I need to make sure that the folders at each end are identical, or to somehow get rsync to ignore folders I don't want synced. </li>
<li>The up and down commands need to be symmetrical, because I have to go in both directions. This means that I can't use the common technique of putting a folder of symlinks to folders I want to rsync into <code>~/backup</code> and pointing rsync at that folder. This works to upload, but if you download, it overwrites the symlinks rather than copying the files at their original locations.</li>
<li>The process requires discipline and care. I have to remember to sync-up or sync-down as appropriate before doing anything else, or local changes stand a chance of not being synced or being lost altogether.</li>
</ol>

<p>I solved 1 and 2 by collecting together all the folders I wanted to sync under <code>~/sync</code> and then leaving a symlink in the original directory if necessary. So, for example, I have <code>~/sync/Documents</code>, then a <code>Documents</code> symlink to this in my home folder. Similarly, I have a <code>~/sync/config</code> which contains various dotfiles  (like .bashrc, .vim etc.) which are then symlinked in my home folder. It's a bit fiddly, but it works.</p>

<p>So <code>~/sync</code> contains 'AppSupport' (a few folders normally in <code>~/Library/ApplicationSupport</code> for applications like MarsEdit, my texmf folder, TextMate etc.), 'bin' (my own shell scripts), 'config' and 'Documents'. I don't try syncing Movies, Pictures or anything else in my home, though I might think about Pictures in future.</p>

<p>Anything which can be synchronised some other way <em>is</em>: I use only IMAP for my email accounts, and iCal, AddressBook, Safari bookmarks and Yojimbo databases are all kept in sync using .Mac. It took a bit of tinkering to get that working, but it seems quite efficient now.</p>

<p>I've also made some progress with problem 3 by writing a small ruby script which reads a timestamp from a <code>.synctime</code> file kept on each local machine and the server. It then warns me if the timestamps are different where this implies that I might be about to overwrite newer files. For example, If I sync-up from my desktop to the server, then go home and accidentally sync-up rather than doing a sync-down, the timestamp of the server file will be newer than that of my laptop. It will then warn me about this and exit. It's not a perfect solution, because it doesn't know anything about the age of individual files, but it's a useful sanity check to prevent me from doing something really stupid. I also get the script to write the list of changed files to a log, so that I can keep track of what's changing and when.</p>

<p>I'm pleased to say that it seems to be working very smoothly in practice. I just type <code>sync-up</code> or <code>sync-down</code> in Terminal, and it only takes a minute or so for everything to be brought up to date. I have .ssh keys to automate logging in to Strongspace, so it's very painless. As a bonus, I now have another backup of all my important files in a remote location, and I've been syncing-up fairly regularly throughout the day so that I've backed up current files, and so that the final sync at the end of the day goes a bit quicker.</p>

