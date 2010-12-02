-----
kind: article
title: "Alpine"
tags:
- technology
- software
created_at: 2009/08/25
permalink: Alpine
toc: false
-----

<p>A few weeks ago, I got an <a href="http://eeepc.asus.com/global/product1000he.html">EeePC 1000HE</a> netbook for work. I needed a dedicated, cheap machine to run some Linux-only stuff on, and I thought it would be nice to have a lightweight portable to take on trips. I'll write more about the EeePC later, but I wanted to mention my new-found love affair with the console email client, <a href="http://www.washington.edu/alpine/">Alpine</a>. I installed the <a href="http://www.archlinux.org/">ArchLinux</a> distribution with the <a href="http://awesome.naquadah.org/">Awesome</a> window manager, both of which are very lightweight and speedy, and I wanted an email client to match.</p>

<p>Over the years, I must have used a pretty large number of email clients. From Eudora, Mailsmith, a brief and regrettable affair with Microsoft Entourage (about which we will never speak again) to settling for a number of years on Apple's Mail, it actually all started with Alpine's predecessor: Pine. Back in those far-off days, I used Pine by connecting to the University's VAX machine, and I hated it. To be fair, it has come a long way since then, and I have learned to love the command line. After a few days of playing with Alpine on the EeePC, I decided that I wanted to switch to it on my Macs too.</p>


<p>Apple's Mail is actually a pretty good email client, by which I mean that it's generally <em>good enough</em>, and while it has some annoying quirks, the inter-operability with iCal, Address Book and so forth makes it useable. However, if you have a rather complex email account setup like mine, there are annoying limitations, and without add-ons like <a href="http://www.indev.ca/MailTags.html">MailTags</a> and <a href="http://www.indev.ca/MailActOn.html">MailActOn</a>, it is difficult to navigate and process your email in a fast and mainly keyboard-driven way.</p>

<p>Alpine is massively configurable. The settings page is actually a bit frightening at first, even for a nerd like me with a deep and abiding love of instruction manuals, but there is very good contextual help, and I rarely needed to search the web to find the answer I needed. You can configure practically every aspect of Alpine, from whether you get asked to confirm different kinds of operations to the colour of the Answered mail status indicator (foreground <em>and</em> background colour). Importantly for my purposes, it has the notion of 'Roles'. You see, for a while, I've been forwarding all my various accounts to <a href="http://fastmail.fm/">Fastmail</a>, so that I have one IMAP archive for all my received and sent mail, and one webmail client to check while on the move. Fastmail's web client allows you to set up 'Personalities' so that you can send email as if it came from one of the email accounts you have piped to Fastmail. This is great, but if you're sending from a desktop client, you need to make the same kind of arrangement. Mail just about allows this, but in a rather clunky way: you can enter a comma separated list of email addresses under your Fastmail account, and select the one you want from a dropdown. However, you can only have one 'real name' setting, which is awkward when you use pseudonyms as I do for one of my accounts. You also can't automatically change the signature to match the 'From:' address. Annoying.</p>

<p>Alpine's roles allow you to control such things very finely. You can change all manner of aspects of the outgoing mail, and automatically choose a role based on aspects of the incoming mail, folder and so forth. There are even settings to control independently whether you get asked for confirmation about using the role when composing, replying or forwarding mail. Once you've set it up, it works brilliantly, and I no longer have that lurking fear of inadvertently sending work email as bsag, for example. Some other clients have a similar notion of personalities, but I've never seen it implemented as well or as thoroughly as it is in Alpine.</p>

<p>It's also wonderfully speedy: you can zip around the interface using mostly one-key hotkeys, and because the commands are also displayed at the bottom of the window, you can easily check if you forget a seldom-used hotkey. Emails get loaded and saved quickly, and not having a native HTML rendering engine is actually a blessing, speedwise (something I loved about Mailsmith, too). When I got back from my holiday, the usual slog of wading through the accumulated backlog of work email was made much quicker and more pleasant by being able to quickly sift out the things I needed to respond to, by flagging with a keyword, which I have set up to automatically move the email to an 'Action' mailbox.</p>

<p>One of the best features is that you can save the configuration file &#40;and the address book&#41; to an IMAP server, and then tell Alpine to use that. This is great because each time you tinker with the settings, they are transparently available on any other instance of Alpine you start. It's like  MobileMe, but without having to pay for it (as long as you have an IMAP server), and it seems to work very reliably. I keep all my mail on my Fastmail IMAP account, so I can access it from any computer. For various annoying Exchange reasons, I can't easily forward my work mail there, but instead, I use an Alpine 'Maildrop' folder to automatically move mail from my work remote inbox to a 'WorkInbox' mailbox on Fastmail. This also allows me to keep my work and personal mail separate, which is good.</p>

<p>Here are a few tips I picked up along the way, particularly concerning using Alpine on a Mac:</p>

<ol>
<li>Paul Heinlein has a collection of <a href="http://www.madboa.com/geek/pine-macosx/">very useful tips</a> for using Alpine on Mac OS X. I found that Alpine 2.0 wouldn't compile on Leopard (some problem with linking), but the 1.10 binary version for Mac OS X on the main Alpine site works fine.</li>
<li>Paul's <code>~/.mailcap</code> tip for viewing attachments works a treat, but I fancied using QuickLook. So I just replaced the path to <code>open</code> with the path to my own script which calls Apple's qlmanage: <code>qlmanage -p "$@" &gt;&amp; /dev/null &amp;</code>. Now when I select an attachment to view, it opens in QuickLook.</li>
<li>If you want to save your attachments to the Download folder (or any other folder) by default, just cd to that directory in your terminal before you start Alpine, and set the 'Use Current Directory' config setting.</li>
<li>I wanted to use a theme (<a href="http://sysphere.org/~anrxc/j/articles/zenburn/index.html">Zenburn</a>) which needs 265 colours, but Apple's Terminal doesn't seem to be able to emulate a 256 colour terminal, so I use <a href="http://iterm.sourceforge.net/">iTerm</a> instead.</li>
<li>As a tiny tweak, I set the url viewer to the command <code>/usr/bin/open -g</code> which opens selected URLs in Safari in the background, so you can carry on with what you are doing.</li>
</ol>

