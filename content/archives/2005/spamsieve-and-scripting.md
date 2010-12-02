-----
kind: article
title: "SpamSieve and scripting"
tags:
created_at: 2005/10/12
permalink: spamsieve-and-scripting
toc: false
-----

<p>Sometimes the integration and scripting abilities of Mac OS X make an enormous difference to the experience of working with it. As an example, I recently went back to using <a href="http://c-command.com/spamsieve/">SpamSieve</a> with Mail to filter my mail for spam. I'm not quite sure why I stopped, to be honest, but after installing Tiger, I let Mail's built-in junk mail filter handle things; it seemed simpler, and spam filtering on the mail servers of most of my accounts caught a lot before it even got to me. However, recently, the waters starting rising again, and Mail's junk mail filter was letting a lot of scum float to the surface. Something had to be done.</p>

<p>I got a free copy of SpamSieve with BBEdit several years ago, so I downloaded the latest version, and installed the plugin for Mail. So far, so good, but I'd been used to having a keyboard shortcut to visit the Junk folder (Cmd-6) and another to empty the box of messages (Opt-Cmd-J). Since SpamSieve uses its own folder to hold spam (called 'Spam', oddly enough), these no longer worked, and I was getting irritated by having to mouse and click around to get rid of all those offers of hot stock tips and pharmaceuticals.</p>

<p>I realised that I could probably cobble a new sequence of commands together and give them a hot key using <a href="http://quickeys.com/">QuicKeys</a> (another really useful utility that works very hard in the background for me), but there was a problem. QuicKeys allows you to record the location of mouse clicks to select things that are otherwise unselectable via menus, but the process is a bit error prone. However, it does allow you to expand its functionality even further by calling Applescripts as part of a shortcut sequence. So, with a bit of help from Mr. Google and extracting the relevant bits from larger script by <a href="http://www.elegantchaos.com/node/159">Sam Deane</a>, I came up with the following code snippet:</p>

<pre>
<code>
tell application "System Events"
 tell process "Mail"
  set boxName to "Spam"
  select (first row of outline 1 of scroll area 1 of window 1
    whose value of static text 1 is boxName)
 end tell
end tell
</code>
</pre>

<p>That selects the first row of the mailbox list on the left of Mail's window, whose name is "Spam". This snippet then gets called in a sequence that goes like this: switch to Mail, run the Applescript to select the Spam box, pause for half a second, hit Cmd-A, hit delete. I then assigned the sequence to the hot key Ctrl-Opt-Cmd-S (SpamSieve's Mark as Spam is Ctrl-Cmd-S, so this seemed logical), and all is well.</p>



