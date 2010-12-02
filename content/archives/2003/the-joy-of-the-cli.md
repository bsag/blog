-----
kind: article
title: "The Joy of the CLI"
tags:
- technology
created_at: 2003/05/15
permalink: the-joy-of-the-cli
toc: false
-----

<p><strong>Warning:</strong> this entry contains gratuitous geekiness. If command line prompts scare you, look away now.</p>

<p>A couple of days ago, I found a reference to a utility called <a href="http://projects.tynsoe.org/rubrique.php3?id_rubrique=4" title="GeekTool page">GeekTool</a>: with a name like that, it couldn't be more attractive to me unless the developer changed the name to ChocolateGeekTool.</p>

<p>It's a PreferencePane which allows you to display logs, the output from a shell command, or an image directly on your desktop. Each item can have a different colour background or font (or have a transparent background so that you can see your desktop picture) , and can be placed anywhere on the screen.</p>

<p>I currently have it set up with my uptime (in turquoise, of course, for that is the colour of uptime), the output of <code>top -ul1</code>, and <code>cat ~/Documents/Notebooks/notes.txt</code>. The latter is a little text file I set up in lieu of Stickies to hold various brief scribblings like phone numbers or reminders. I have an alias set up so that I can quickly add stuff to this file: <code>alias note 'date >> ~/Documents/Notebooks/notes.txt; tee -a ~/Documents/Notebooks/notes.txt > /dev/null'</code> (a handy tip from <a href="http://www.macosxhints.com/article.php?story=20030427153848404&query=notes">MacOSXHints</a>). Sweet.</p>


