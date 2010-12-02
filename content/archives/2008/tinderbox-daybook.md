-----
kind: article
title: "Tinderbox daybook"
tags:
- technology
- software
created_at: 2008/07/02
permalink: tinderbox-daybook
toc: false
-----

<p class="img-shadow"><a href="http://www.flickr.com/photos/51035737494@N01/2630855683" title="View 'Tinderbox daybook' on Flickr.com"><img src="http://farm4.static.flickr.com/3130/2630855683_b775fd88b6_m.jpg" alt="Tinderbox daybook" border="0" width="240" height="207" /></a></p>

<p>When I started using Tinderbox again for <a href="http://www.rousette.org.uk/blog/archives/thinking-with-tinderbox/">planning various work projects</a>, I noticed that a lot of people were using it for a simple daybook or journal. I've tinkered with various ways of keeping a record of the various things I do, people I talk to or ideas I have throughout the day, including a <a href="http://www.rousette.org.uk/blog/archives/journal-textmate-plugin/">simple little plugin</a> I wrote for Textmate to keep a journal in a plain text file. That worked quite well, but it wasn't as easy as it might have been to find things again when I needed them because it was one big flat file.</p>

<p>So I started playing around with keeping my journal in Tinderbox, and I've been using it for a couple of months now. It's deliberately very simple: I have a container called Daybook, in which all my snippets of text are kept. That container has an OnAdd action which sets the prototype as daybook (setting the colour and a few other attributes), and also sets the title with a datetime stamp of the creation date. That means I can just hit return to create a new note, hit return again to dismiss the dialogue setting the title (because it will be set automatically), then start typing in the window which appears. These daybook entries are sorted in reverse chronological order, and automatically collected by 'Today' and 'Past 7 days' agents, which do just what you'd expect. I also have another container for completed tasks, where I have one note for each day (again, auto-titled on creation with the date and 'tasks') which contains all the completed tasks for that day.</p>

<p>One of the things I really like about Tinderbox is that the DIY ethos of it means that you can make something as simple or complex as you like, and -- even more importantly -- you don't have to decide exactly how something should be set up from the start. Once I'd been using the setup I described above for a few days, I realised that it would be nice to collect my notes on articles I'd read in a separate place so that I could find them more easily. The infinitely flexible structure of notes meant that I didn't have to create a different kind of note to do this, or even go back and edit my previous notes on reading. When I make notes on a paper I've read, I tend to first paste in the reference and the link to the entry from the <a href="http://mekentosj.com/papers/">Papers</a> application, so that I can find the original article easily from my notes. So all I had to do was create another agent called 'Reading' which searched for notes with the string 'papers://' in them, which is the start of the Papers URI format. It would then assign 'reading' to the attribute 'tags' for that note. Also, by setting the tag manually to 'reading' I could get the Reading agent to find the note.</p>

<p>I set up something very similar for bookmarks, so that if I dragged a URL on to a note to remind myself of some online resource, it would be collected by the 'Bookmarks' agent. It's important to note that these agents just store aliases of the original notes, so that all the originals are either in the Daybook container or the Completed tasks container. At any point, I could set up another agent or alter the existing ones, and view my notes in a different way.</p>

<p>Tinderbox has great text and HTML export capabilities, so I can export my journal for the day, week, month or whatever period I want, and it's easy to view in other forms or reformat for other uses. And if I ever want to use something else, the file itself is XML, so I could still get my data out.</p>


