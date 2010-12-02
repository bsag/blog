-----
kind: article
title: "Tabs and popup windows in Safari"
tags:
- technology
- software
created_at: 2007/02/20
permalink: tabs-and-popup-windows-in-safari
toc: false
-----

<p>I was about to post a question to expert Safari users out there about opening popup windows (the kind you <em>want</em> to open as a result of a javascript bookmarklet) when you have tabs enabled -- but I just solved it myself. In case anyone else is as dense as I am, I might as well post the solution here.</p>

<p>The problem was this: I have tabs enabled, and have just one open window containing all my tabs. When I used a javascript bookmarklet that was supposed to open a little popup window (like the ma.gnolia bookmarklets), it would open in it in the current window as a tab, shrinking the window containing all the tabs in the process. This -- I'm sure I don't need to explain -- was very annoying, causing much tutting and impatient grabbing of the resize widget.</p>

<p>In the process of groping around in Safari's Preferences for a way to fix it, I realised that the otherwise indispensable <a href="http://haoli.dnsalias.com">Saft</a> might actually be to blame. Sure enough, unchecking 'Always open browser window in a tab' in Saft's Tab pane did the trick. Obvious really. I think I originally checked it because I do otherwise like windows to open in tabs, but it's a bit over-eager, even though it does do exactly what it says on the tin.</p>

<p>Anyway, I'm now a happy bunny because bookmarklets open little popup windows as they were designed to do.</p>



