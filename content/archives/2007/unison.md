-----
kind: article
title: "Unison"
tags:
- technology
- software
created_at: 2007/03/12
permalink: unison
toc: false
-----

<p>There's a possibility that I might be able to get a new desktop Mac (most likely an iMac) at work, which would mean that a) I'd have a much faster machine for work (my G4 12" PowerBook is starting to show its age a little), b) I'd have a bigger screen, c) I'd mostly be able to leave my PowerBook at home for working in the evenings and weekends. Since I'm going to be commuting more by bike soon, not having to worry about my laptop bouncing about in a pannier will be quite welcome, not to mention lightening the load to haul quite a bit.</p>

<p>But that raises another problem -- synchronising the files on both machines. I'm lucky enough to have 25 lovely GB of secure storage space on <a href="http://www.strongspace.com/">Strongspace</a>, so I'm thinking that I might use that as a 'hub', and use <a href="http://www.cis.upenn.edu/~bcpierce/unison/">Unison</a> to sync files to and from my desktop and laptop to Strongspace. The idea would be that I'd finish at work, <code>unison</code> my files to Strongspace, go home, <code>unison</code> those changed files to my laptop, work there, <code>unison</code> the changes back to Strongspace, and so on. One slight difficulty is that it seems that the Strongspace servers no longer have Unison, but with <a href="http://code.google.com/p/macfuse/">Macfuse and sshfs</a>, I should be able to mount Strongspace locally, run <code>unison</code> on the local mount-point then unmount when it's done.</p>

<p>I'm wondering if any of you clever and resourceful geeks out there have any tips for using Unison with Mac OS X? I'm not going to sync <em>everything</em> between the two machines, so I'll have to do some clean up of my home directories so that I can partition what will and will not be synced between the machines. That should be fairly easy for the main folders in my home, but I would like to sync some files in <code>~/Library</code>, which could be tricky. Has anyone got experience of using symlinks to collect together specific files to sync? Are there issues, for example, syncing mailboxes in <code>~/Library/Mail</code> (I use a mixture of POP and IMAP accounts, and have quite a bit of mail in local mailboxes) or Yojimbo databases between machines?</p>



