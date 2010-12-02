-----
kind: article
title: "Quicksilver activate screensaver snippet"
tags:
- technology
created_at: 2006/02/02
permalink: quicksilver-activate-screensaver-snippet
toc: false
-----

<p>When I step away from my computer, I like to lock the screen---it's not that I have anything particular to hide, but I don't really want anyone messing about with my machine while I'm gone. By far the easiest way to accomplish screen locking is to go to the Security pane in System Preferences, then check the 'Require password to wake this computer from sleep or screen saver' checkbox. Then you can simply allow the screen saver to kick in after an interval when you leave, or you can activate it immediately by setting a 'Hot Corner' in the Desktop &amp; Screen Saver pane. I had it set for the bottom left corner, so that I could just move my mouse to that corner before I left to activate the lock.</p>

<p>However, it was far too easy to activate accidentally. I kept interrupting my own work because I'd unknowingly pushed the mouse over to that corner, and would have to stop what I was doing to wait for the password entry box to come up. Annoying.</p>

<p>Then I realised that Quicksilver could come to the rescue again (Quicksilver Ho!<sup id="r1-020206"><a href="#f1-020206">1</a></sup>). I removed the Hot Corner and set up a trigger with the text:</p>

<pre>
<code>
open '/System/Library/Frameworks/ScreenSaver.framework
/Resources/ScreenSaverEngine.app'
</code>
</pre>

<p>as the item and 'Run command in shell' as the target. Then I assigned a mouse trigger to the bottom left corner, but crucially required a click in that corner to activate it. It's nearly as convenient as just putting the mouse in that spot, but not nearly as easy to trigger accidentally. Sorted!</p>

<p><sup id="f1-020206">1</sup> For some reason, I imagine a cowboy in a silver suit and a black mask calling out "Quicksilver, Ho!" before he gallops off on his horse to rescue someone. <a href="#r1-020206">&uarr;</a></p>



