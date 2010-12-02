-----
kind: article
title: "iBeeZz"
tags:
- technology
created_at: 2004/02/29
permalink: ibeezz
toc: false
-----

<p>I've finally sorted out a workable solution for running cron jobs at night on my laptop. The problem is that I don't like leaving the PowerBook awake all night: Heat is pretty damaging to electronic components, and the longer the backlight in the LCD is on, the shorter its life. It's also a bit wasteful of energy, and I try to conserve energy whenever I can.</p>
<p>We've been using a utility called <a href="http://www.ibeezz.com/en/" title="iBeeZz">iBeeZz</a> at work for a while now to shutdown and reboot a desktop machine we use as a server, and I've finally got around to installing it on my laptop. The built-in Energy Saver preferences allow you to shutdown the computer at a pre-set time, but you can't wake it from sleep automatically. iBeeZz has a lot of flexibility, and you can wake up, sleep, shutdown or startup at any scheduled time, while varying the behaviour on different days of the week. You can also arrange to quit an application, open a file or an Applescript, or you can launch iTunesâthus turning your Mac into a ludicrously over-priced alarm clock.</p>

<p>The PowerBook sleeps in the spare bedroom overnight, which is next to our bedroom<sup>1</sup>, so I want to minimise the noise levels. This is what I do:</p>
<ul>
<li>At 11:13 pm, an 'open file' event quits <a href="http://www.subrosasoft.com/thestore/product_info.php?products_id=423" title="DesktopEarthPro">DesktopEarthPro</a>. I don't need to see the cloud pattern at night, and connecting to the internet to download the image files uses a fair bit of CPU time intermittently. It then also mutes the sound and turns off the screen backlight.</li>
<li>A 'sleep' even puts the machine to sleep two minutes later, with a warning 5 minutes before so that I can cancel the sleep if I'm still hard at work (ha!).</li>
<li>A 'wake' event wakes the machine at 2:15 am, just in time for the cron jobs to run. My own cron job (to download the zipped backup of this site from the server) is also slotted in.</li>
<li>A 'sleep' event puts it all back to sleep again at 4:00 am.</li>
<li>Finally, another 'wake' event and Applescript wakes the machine, starts up DesktopEarthPro, unmutes the sound and brightens the screen at 6:30 am, ready for me to check my email. In the interests of sanity and having a life, this event is disabled at weekends.</li>
</ul>
<p>All I need now is a Firewire hard drive that doesn't have a fan that sounds like a 747 on take-off, and I could do my daily backup at night too.</p>
<p><sup>1</sup> Actually, our flat is so small that nowhere inside the flat is very far from our bedroom.</p>
