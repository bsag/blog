-----
kind: article
title: "Panther stuff"
tags:
- technology
created_at: 2003/10/25
permalink: panther-stuff
toc: false
-----

<p>My local Apple Centre emailed at the end of the week with an invitation to come to a Panther party on Friday night. They had permission to sell Panther at 8pm--a full 4 (or 5?) hours before it was released in the States. I had previously ordered 3 copies for all our Macs at work, and of course I jumped at the chance to spend the weekend tinkering with it.</p>

<p>The Apple Centre here is <em>really</em> tiny. They don't have a lot of space to keep stock in, so most of their business is ordering in hardware and software, repairs, and a fair bit of Education account business with the University--it's just a couple of rather small rooms. When I turned up after dark, the place had the feel of a 1930s speakeasy, with a lot of furtive looking geeks hanging around, collars turned up, and then emerging clutching black boxes under their raincoats before they hurried off into the night. "Psst. Wanna buy a pukka operating system?".</p>

<p>It was all great fun. They had some machines set up and running Panther, so the monetary transactions were all carried out to a soundtrack of oohs and ahs, as people discovered Expos&#232; for the first time.</p>

<p>It was quite late when I got back so I didn't install until today. I also wanted to read my iFriend[1] Joe's new eBook, <a href="http://www.tidbits.com/takecontrol/panther/upgrading.html">Take Control of Upgrading to Panther</a>. If you haven't upgraded yet, I heartily recommend the book to ensure that you make the right choices while upgrading, and take all the safety precautions you can. It's $5 well-spent in my opinion.</p>

<p>I'll probably post some more considered reaction over the next few days, once I have had a chance to explore all the new features. So far, the install seems to have gone without to much incident, though I did have a bit of a nasty moment when <a href="http://www.vim.org/index.php">Vim</a> failed to launch. To my relief, the problem is just that Perl is in a new location in Panther, but Vim is linked to the old location. The <a href="http://groups.yahoo.com/group/vim-mac/message/1060">work-around</a> is just to link the new location to the old:</p>

<pre>
<code>sudo ln -s /Previous Systems/Previous System 1/System/
Library/Perl/darwin /System/Library/Perl/darwin</code>
</pre>

<p>Other than that, the main huge benefit seems to be increased speed and snappiness all round--it almost feels like I have a new machine!</p>

<p>[1] Joe coined the phrase, and I rather like it.</p>
