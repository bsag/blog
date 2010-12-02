-----
kind: article
title: "Arch Linux and XMonad"
tags:
- technology
- software
created_at: 2010/05/15
permalink: arch-linux-and-xmonad
toc: false
-----

<p class="img-shadow"><a href="http://www.flickr.com/photos/51035737494@N01/4608354949" title="View 'Arch, XMonad and two urxvt terminals' on Flickr.com"><img border="0"width="500"alt="Arch, XMonad and two urxvt terminals"src="http://farm2.static.flickr.com/1122/4608354949_1d91d3f8b1.jpg"height="293"/></a></p>

<p><strong>Warning</strong>: Geekery ahead!</p>

<p>I've been meaning to write for a long time about the EeePC 1000HE I got <a href="http://www.rousette.org.uk/blog/archives/Alpine/">last August</a> and <a href="http://www.archlinux.org/">Arch Linux</a>. When I got the netbook, I installed Arch, and used <a href="http://awesome.naquadah.org/">Awesome</a> as a window manager. It worked well, but then &mdash; in a fit of curiosity and tweakery &mdash; I decided to try out <a href="http://www.jolicloud.com/">Jolicloud</a>. Jolicloud is a nice distribution, specially designed for netbooks, and every single feature on the EeePC worked perfectly out of the box. However, I missed the elegance of Arch Linux, and more importantly, the long battery life. I may have had something misconfigured, but with Jolicloud, my battery life was around 4.5 to 5 hours, whereas with Arch Linux and Awesome, I was getting 8 hours with WiFi switched on and more than 9 hours with it off. I'm going to be using the netbook in the field in Brazil this year, where power outlets are sparse and power cuts frequent, so I recently wiped the drive and reinstalled Arch Linux.</p>

<p>Arch is a very clean and elegant distribution, where you basically get only the barest of essentials by default, and then build your system up the way you want. Consequently, it's not ideal for beginners, but it is a great way to learn about maintaining and configuring a system, and it's brilliant for netbooks, where you want to minimise resource use. Although it is not a beginner's distribution, I have to say that the wiki and forums are the best around, and I've always found the answer to my questions there. I think it's telling that when I've been Googling for answers to some non-Arch related Linux questions, results from the Arch Linux wiki or forum have always featured prominently, and have always been useful.</p>

<p>Anyway, I had obviously learned a bit the first time round, because this installation and configuration session went much more smoothly, and I've managed to get the things I had issues with last time (like hibernation and font configuration) properly sorted out. I've also started using <a href="http://xmonad.org/">XMonad</a> as a window manager. Like Awesome, it's a tiling window manager, meaning that it automatically organises placement of your windows for you, and allows you to use just the keyboard to navigate and manage them. I liked Awesome, but for some reason, I had a hard time modifying the configuration to my liking, without totally breaking things. I thought that XMonad would be even harder, because the configuration file is in Haskell &mdash; a language I don't know. Haskell turned out to be easier to understand than I thought, and because you can set up your configuration to override some of the default settings (rather than having to write a full, replacement configuration), the file can be quite concise and easy to write and maintain. I've got a couple of very thin status bars as you can see in the screenshot above (and <a href="http://www.flickr.com/photos/bsag/4608961582/in/photostream/">here</a>) which take up very little vertical space, and there is no window chrome which all means that you maximise the screen space for content &mdash; important on such a small screen.</p>

<p>I think that I've got things set up the way I like now. I've got very few applications with GUIs (just Chromium, gVim, Inkspace, Gimp, evince, OpenOffice (for emergencies) and TeXMaker), but I have some nice command line applications. I'm using mc for file management, feh for image viewing (and setting the desktop background), R for statistics and graphs, irssi for occasional IRC use, scrot for screenshots and twidge for Twittering. I've also managed to set up Dropbox as a daemon, with the dropbox.py script to check status and other things, so that I don't need a panel or dock.</p>

<p>I find this barebones system oddly bracing and refreshing. On the Mac, I love the way that everything Just Works, and the fact that the applications are so beautifully designed (aesthetically and functionally). Arch Linux is almost the opposite of that (with the exception of the functional part): things work very well, but only if you configure them yourself, and the command line applications I have chosen, while beautiful in their own way, are completely different from their Mac counterparts. There is occasionally a bit of mental crashing of gears going from one to the other, but more often it is a refreshing switch, like having a cool shower. The stripped down system suits my little netbook (nicknamed 'Archie' of course) very well.</p>



