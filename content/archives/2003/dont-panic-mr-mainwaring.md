-----
kind: article
title: "Don't panic Mr. Mainwaring!"
tags:
- technology
created_at: 2003/09/10
permalink: dont-panic-mr-mainwaring
toc: false
-----

<p>It's a measure of the stability of the current incarnation of MacOSX that I freaked out completely when the Finder went all wobbly on me today. For the past couple of years, I've had no serious problems with either software or hardware. Today, every time I tried to open any folder or document in my home folder, the Finder would crash. It wasn't a Finder.app problem though, because <a href="http://www.cocoatech.com/">Path Finder</a> (a Finder replacement) had the same difficulties. It wasn't a corrupted document or volume either, because I could open the same files and folders over the network, and list them in Terminal. I tried all the old faithful methods (fixing permissions, fsck-ing), but still the Finder was crashing.</p>

<p>After grinding my teeth and tearing my hair out for the best part of the day, I finally admitted defeat and posted a desperate plea for help on the <a href="http://forums.macosxhints.com/index.php?s=">MacOSXHints forum</a>. By the time I had come out of a meeting, someone had posted a reply suggesting a simple fix: trash some specific preference files, delete the system and user caches, and reboot. I crossed my fingers (literally--sometimes I'm very superstitious) and followed the instructions. It worked! MacOSXHints is really worth a try if you ever have any Mac problems. There are lots of really helpful and very experienced Mac users on the forum, and they've made my day more than once.</p>


