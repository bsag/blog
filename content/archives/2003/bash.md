-----
kind: article
title: "Bash"
tags:
- technology
created_at: 2003/11/08
permalink: bash
toc: false
-----

<p>This is one for the UNIX geeks:</p>

<p>Many moons ago, when I had a PC laptop running Linux, my shell of choice was bash. Well, to be truthful, it would probably be more accurate to say that the <em>default</em> shell was bash, and I never figured out how to change it. I became reasonably proficient with it and customized it with aliases, scripts, a custom prompt and so on. When I moved to MacOSX, I used tcsh, as that was the default shell at the time, but I missed the features of bash. I did have it installed, but again, I could never be bothered to switch the default login shell. Well, I finally got around to sorting it out.</p>

<p>It was a bit more complicated than I had anticipated, because I had forgotten most of what I knew about bash. In particular, I forgot that bash can't take command line variables in aliases--you have to put them into functions instead. That took a <em>long</em> time, and a lot of searching of the <a href="http://forums.macosxhints.com/">macosxhints forum</a> to sort out. But now that I've got it working, I remember why I liked bash so much--even more so now that I've learned to use vim, and can exploit the joys of <code>set -o vi</code> properly.</p>

<p>In the course of trying to find information about bash, I discovered a great little command line utility called <a href="http://www.math.fu-berlin.de/~guckes/screen/">screen</a>. It allows you to set up multiple virtual terminals within one terminal window, switch between them easily (leaving the processes running in each), and even copy and paste text between them. It works rather nicely, and means that you don't need to have scores of terminal windows littering your desktop. I found that I already had it installed, which means either that I installed it unknowingly, or that it's installed by default in Panther.</p>


