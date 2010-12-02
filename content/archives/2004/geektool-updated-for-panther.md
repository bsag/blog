-----
kind: article
title: "GeekTool updated for Panther"
tags:
- technology
created_at: 2004/02/13
permalink: geektool-updated-for-panther
toc: false
-----

<p>I've <a href="http://www.rousette.org.uk/mt-static/blog/archives/000286.html" title="The Joy of the CLI">mentioned before</a> that I'm an avid user of <a href="http://projects.tynsoe.org/en/geektool/" title="GeekTool">GeekTool</a>, so I was disappointed to find that it was broken in Panther. I sorely missed the little bits of information that got written to my desktop, though my desktop is <a href="http://www.rousette.org.uk/mt-static/blog/archives/000585.html" title="DesktopEarth Pro">already pretty rich</a> in information. I'm glad to say that GeekTool has now been updated for Panther and works fine.</p>

<p>I had a nice GeekTool entry which ran an Applescript <a href="http://www.rousette.org.uk/mt-static/blog/archives/000421.html" title="An excellent Applescript">written by Pete</a>, which listed the mailboxes in <a href="http://www.barebones.com/products/mailsmith/index.shtml" title="Bare Bones Software - Mailsmith">Mailsmith</a> with unread messages, and gave the unread message count. This was very handy as Mailsmith doesn't have a message count on the Dock icon like Mail. The only problem I had was that I would forget to disable the script when I wanted to logout or shutdown. As GeekTool runs the script at intervals, it would start up Mailsmith again, and therefore prevent me from logging out. Relying on me to <strong>remember</strong> to do anything is fraught with danger and disappointment, so I wanted to alter the script to check if Mailsmith was running before it did anything. That turned out to be inexplicably hard<sup class="footnote"><a href="http://www.rousette.org.uk/mt-static/blog/archives/000614.html#fn1">1</a></sup>, but I've managed to get it working now.</p>

<p>As Pete has taken down the page on which the original script used to reside, I've reproduced it below (with his permission and my additions) in case anyone else is interested. I'm sure that it would be reasonably easy to adapt it for other email clients, if they have decent scripting support.</p>

<pre>
<code>
-- A GeekTool Applescript
-- Runs periodically and checks if Mailsmith is running
-- If so, gets the count of each unread mailbox
global c
on run
  set c to " "
  set okflag to false
  tell application "System Events"
    if (get name of every process) contains "Mailsmith" Â¬
           then set okflag to true
  end tell

  if okflag then
    tell application "Mailsmith"
      repeat with i from 1 to (count mailboxes)
  set obj to mailbox i
  my process_mailbox(obj)
   end repeat
 end tell
  else
 quit
  end if
 return c
end run
on process_mailbox(mbox)
  tell application "Mailsmith"
 set n to name of mbox
 if n is not "(spam)" then
   set mcount to (count (messages of mbox Â¬
                 whose seen is false))
   if mcount > 0 then
    set c to c & (n & " " & mcount) & (ASCII character 10)
   end if
 end if
 repeat with i from 1 to (count mailboxes of mbox)
   set obj to mailbox i of mbox
   my process_mailbox(obj)
 end repeat
  end tell
end process_mailbox
</code>
</pre>
<p>Note: this character (Â¬) indicates a soft line wrap. That is, there should be no carriage return between the current and following line. </p>

<p class="footnote" id="fn1"><sup>1</sup> Perhaps not inexplicably &mdash; I'm not very good at Applescript.</p>
