-----
kind: article
title: "Butler"
tags:
- technology
- software
created_at: 2007/12/04
permalink: butler
toc: false
-----

<p>Ever since I discovered <a href="http://www.obdev.at/products/launchbar/index.html">LaunchBar</a> (several years ago now), I've felt that any Mac (indeed any <em>computer</em>) without a launcher triggered by abbreviations is broken. Once you get used to hitting a hotkey, then typing a few characters to find anything on your computer (applications, files, bookmarks, address book entries and so on), having to browse file system hierarchies feels positively 20th Century. I cut my launcher teeth on LaunchBar, then switched to the dashing and rebellious newcomer, <a href="http://blacktree.com/">Quicksilver</a>. Quicksilver is somewhat more powerful than LaunchBar in some respects, and is extensible with plugins, but with great power comes a certain amount of complexity, and it can be difficult to remember exactly how to use all of the features. For example, there is a great image manipulation plugin which you can use by feeding it a file and a string of commands (for example to change a TIFF file to a PNG and resize it to particular dimensions), but I don't use it often enough to remember how to format the commands, so I have to look them up. Again. I've also found it slightly unstable at various times, so I've tended to switch back and forth between LaunchBar and Quicksilver, pulled between the conflicting forces of stability and excitement.</p>

<p>Since installing Leopard, I've been <em>almost</em> tempted to revert to using Spotlight as a launcher, because the speed has improved enormously. But it's still the <a href="http://en.wikipedia.org/wiki/The_Why_of_Fry">Scooty Puff Jr.</a> of launchers, so I can't quite bring myself to do it.</p>

<p>Then the other day, I discovered <a href="http://manytricks.com/butler/">Butler</a> again. I'd tried it out a long time ago, but ended up not liking it very much. I'm sure that it has improved a great deal over the years, but having spent more time with Butler now, I'm sure that my lack of patience was the main problem when I first tried it.</p>

<p>In one sense, Butler does very similar things to the other launchers I've mentioned. You can use the abbreviation search to find and launch applications, files, bookmarks, web searches, scripts and contact information. It has a built-in multiple clipboard organiser, which records and stores the last 10 items copied to the clipboard, as well as letting you have snippets of frequently-used text stored on permanent pasteboards. It can also replay keystrokes for a certain amount of simple automation in applications. Some of the other launchers have some or all of those features, or you can get them by using other small utilities, but where Butler really scores is in the degree of customisation it allows.</p>

<p>Every feature in Butler can be triggered by a hotkey, a custom abbreviation in the abbreviation search window, by moving the mouse to a hot corner of the screen (with or without keyboard modifiers), or when Butler launches or quits. If that wasn't enough, you can place and arrange any item on a menu (displayed in the menu bar, or in a docklet), and if you give the menu a hotkey, you can make a floating menu pop up at the location of the cursor. What this means in practice is that you can tailor Butler to your own precise needs, whether your needs are very simple or quite complex. You can have hotkeys or abbreviations for items you access very frequently, and place items you use infrequently on menus for ease of use.</p>

<p>I've set up three menu bar menus with a variety of items in the first, my clipboards in the second, and my Safari bookmarks plus some useful browser-related AppleScripts in the third. You can have separately configured abbreviation search windows, so I have one which searches everything except bookmarks, and is triggered with Cmd-Space. I've set up another with the trigger Ctrl-Alt-B which only searches bookmarks. This separation of sources makes searching much more efficient and quick.</p>

<p>On the main menu item, I have hierarchical menus for my Applications, System Preference panes, Documents folder, Scripts folder, and Music Folder. I've also got a custom container which holds applications that I have to launch after I've synched my computer to a portable hard drive. Before synching, I have to quite applications like Mail, iCal and Yojimbo so that the data doesn't change during synching, but I used to have to manually launch them all again. By setting the container to launch all children when it is triggered, it's a very easy process. Just below that item, I have an AppleScript which quits the same apps, so which I can run before I synch.</p>

<p>Oh, and I nearly forgot -- Butler can also be configured to provide keyboard shortcuts for controlling all aspects of iTunes, and a mini notification window giving the track details on demand or when the track changes. That's very convenient now that I'm using iTunes more often with my new speakers.</p>

<p>I'm really impressed with Butler, and it is rapidly becoming my favourite launcher. You just need a bit of patience to customise it to your needs.</p>
