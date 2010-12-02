-----
kind: article
title: "QuicKeys"
tags:
- technology
- software
created_at: 2009/10/03
permalink: QuicKeys
toc: false
-----

<p>I've had a bit of an <a href="http://www.rousette.org.uk/blog/archives/quickeys-x3/">on-and-off relationship</a> with <a href="http://startly.com/products/quickeys/mac/4/">QuicKeys</a>, but it has certainly been a long one. When I have stopped using it for periods, it has usually been because I have adopted other ways for accomplishing the kinds of tasks it deals with, and it seemed like overkill to have a separate application running to deal with those things. However, with version 4, QuicKeys has become even more powerful, versatile and easy to use, and I am using it in earnest again.</p>

<p>For those of you who haven't encountered QuicKeys, it could be described as a macro utility for your whole system. You can create 'shortcuts' from a series of steps which automate actions that you would otherwise perform manually. There are a very wide range of possible actions in steps, from executing applescripts or shell scripts, to selecting from menus, manipulating windows, typing text or dozens of other things. You have quite a lot of control over the timing of these events and whether you need to wait for a particular window before moving on, which helps a lot in making the shortcuts reliable.</p>

<p>Once you have constructed your shortcut, you can trigger it in many different ways, from the obvious hotkey or mouse click to running if it is a certain date and/or time, if a certain volume has just mounted, or if an event occurs in another application. What makes this even more powerful is that all of the shortcuts can be limited to certain scopes (i.e. active applications). In practice, this means that you can reuse triggers in multiple applications without worrying that the wrong thing will happen. So you can &mdash; for example &mdash; launch a particular web page when you press F1 in Safari, and check for new email when you press F1 in Mail.</p>

<p>There are now also abbreviations (text replacements which happen automatically when you type a trigger) which replaces the need for <a href="http://www.smileonmymac.com/TextExpander/">TextExpander</a> or similar utilities. In fact, the scopes make it very easy for me to type two dashes and a space and have them replaced with the HTML entity for an em dash in MarsEdit, and a unicode em dash in a rich text editor (which I've already done a couple of times in writing this article!).</p>


<p>As I said, QuicKeys' functionality overlaps with several other utilities, but once you get into using it seriously, you soon realise that by building up complex shortcuts you can do things that would be impossible or very difficult using other methods. As one example, since moving to Snow Leopard (and finding Mail <em>much</em> snappier than in Leopard), I have been trying to bend Mail to do my bidding, so that I can use <a href="http://www.rousette.org.uk/blog/archives/Alpine/">Alpine</a> or Mail equally easily and use whichever is more convenient at the time. I wanted to be able to select the correct 'from:' account and matching signature automatically when composing a new mail or replying (similar to Alpine's Roles). Apple makes this extraordinarily difficult for some reason, and I grappled with trying to use Applescripts for ages until I realised that I could do it much more simply and reliably with QuicKeys. For example, to reply I just needed to choose the Message > Reply menu, use QuicKeys' popup menu selector to choose the right sender and signature, and for good measure, type a forward delete in the content area to get rid of the irritating blank line before the text that Mail insists on adding. I just set up duplicates for each account withe the right details added, then added all the shortcuts to a softkey. Softkeys are attractive bezels that appear on screen when triggered, so I can hit the shortcut Cmd+R, and get a list of my accounts in a window which I can choose with numbered shortcuts.</p>

<p>Now that I'm getting better at constructing shortcuts (and more to the point &mdash; remembering to try using QuicKeys to solve the problem), I find myself using it more and more, even for things like remapping hotkeys in applications which I could do through the system. If you like customising your interaction with your Mac, and frequently find yourself frustrated with Applescript or Automator, then it's worth giving QuicKeys a go.</p>

<p>(I'm not affiliated with Startly or the QuicKeys team in any way &mdash; just a very long-standing user.)</p>

