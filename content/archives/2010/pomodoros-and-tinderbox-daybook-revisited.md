-----
kind: article
title: "Pomodoros and Tinderbox Daybook revisited"
tags:
- gtd
- technology
- software
created_at: 2010/05/25
permalink: pomodoros-and-tinderbox-daybook-revisited
toc: false
-----

<p><a href="http://www.flickr.com/photos/51035737494@N01/4639553726" title="View 'Tinderbox daybook-2010' on Flickr.com"><img border="0"width="500"alt="Tinderbox daybook-2010"src="http://farm4.static.flickr.com/3416/4639553726_1fa77dbf2a.jpg"height="392"/></a></p>

<p>I've been using <a href="http://www.eastgate.com/Tinderbox/">Tinderbox</a> for a while as a <a href="http://www.rousette.org.uk/blog/archives/tinderbox-daybook/">daybook</a> and also as a kind of <a href="http://www.rousette.org.uk/blog/archives/using-tinderbox-as-a-task-timer/">task timer</a> to help me track what I spend my time on at work (purely for my own interest and education rather than for billing purposes, as many people do). However since I wrote those articles, I've altered the file a bit, and also discovered the <a href="http://www.pomodorotechnique.com/">Pomodoro Technique</a>, which I'm finding really helpful, so I thought I'd write a bit about how I use the two together.</p>

<p>First, you probably need a bit of background about the problem I was trying to solve. Like many people, I find it very hard to concentrate on long, open-ended tasks which require a lot of focus. Writing grants and papers, reading and making notes on long articles and marking huge stacks of exam papers all require intense concentration, and it's very easy for your attention to get hijacked by checking email, feeds and the black hole that is Looking Stuff Up On The Web. Eventually, your mind ends up flitting like a butterfly between tasks, accomplishing nothing. At the same time sitting down and actually starting with an empty editing window to write something is intimidating. It's so easy to procrastinate and do some other (less urgent or important) task to delay the inevitable moment when you have to actually fill the window up with potentially Nobel Prize winning science<sup id="r1-250510"><a href="#f1-250510">1</a></sup>. Second, I can be quite bad at estimating how long a task will take, particularly the kinds of tasks I mentioned above. That makes it harder to schedule my work, and leaves me a bit demoralised.</p>

<p>The <a href="http://www.pomodorotechnique.com/">Pomodoro Technique</a> is a simple set of rules devised by Francesco Cirillo in the  early 1990s to address the same problems. You can read about the technique on the site, but it comes down to these simple things:</p>

<ol>
<li>You decide what to work on</li>
<li>You set a timer for 25 minutes (the 'Pomodoro', from the tomato-shaped kitchen timer Francesco used)</li>
<li>You work intensely while the timer is ticking, noting down any interruptions to your train of thought</li>
<li>When the timer rings, you stop, even if you haven't finished the task</li>
<li>You take a 5 minute break and do something else that doesn't require focus</li>
<li>You start the cycle again, continuing the task or starting a new one as appropriate.</li>
<li>Every 4 Pomodoros, you take a longer 15 minute break.</li>
</ol>

<p>The idea is that Pomodoros are atomic units of work: you can't divide them into smaller units. If you get irretrievably distracted during one, you have to abandon it and start again<sup id="r2-250510"><a href="#f2-250510">2</a></sup>. In the rest periods it's THE LAW that you do something restful and relaxing, so you have permission to release your butterfly brain to flutter about where it likes, but only for a limited time. Likewise, the limited, 25 minute period of focus is not intimidating, and it becomes like a game to try to race the ticking clock and finish whatever you're doing. I thought that stopping dead after 25 minutes would break my concentration, but actually I find that starting another Pomodoro after a break is exciting and I'm raring to pick things up again. </p>

<p>Since the Pomodoro plus break is always 30 minutes, you can estimate how many Pomodoros you can fit in the day around appointments, meetings and so forth, and then work out how many Pomodoros each task will take and slot them in accordingly. If you record how many it <em>actually</em> takes, you can use the discrepancy to get better at estimating your workload over time. I've found that I'm quite accurate on some things, and underestimate by as much as 100% on others: understanding and compensating for this has been very useful.</p>

<p><a href="http://www.flickr.com/photos/51035737494@N01/4638944431" title="View 'Tinderbox Daybook Dashboard' on Flickr.com"><img style="clear:both;" border="0"width="450"alt="Tinderbox Daybook Dashboard"src="http://farm5.static.flickr.com/4016/4638944431_0d97ecb583.jpg" /></a></p>

<p>Once I realised how useful this technique was to me, it made sense to work the process of recording and estimation into my Tinderbox daybook, so I adjusted the structure a bit. I now have a top level container called 'To do today', which sets the prototype of notes within it to 'pomodoro'. This sets the colour to red and sets some key attributes to record estimated and actual Pomodoros, number of interruptions and how many times I had to reset. I set this up at the start of the day, picking from my todo list and trying to estimate how long each will take. I use a display expression to alter the title of the container to show how many are estimated and how many done to keep track during the day. While I'm working on each task, I keep the note open, and use it as a scratch pad to jot down any thoughts. If I get interrupted by suddenly remembering something else I need to do, or the task becomes more complex, I throw a note about this into the 'Unplanned and urgent' container, and then reassess it later.</p>

<p><a href="http://www.flickr.com/photos/51035737494@N01/4638944629" title="View 'Tinderbox Daybook Log' on Flickr.com"><img border="0"width="500"alt="Tinderbox Daybook Log"src="http://farm5.static.flickr.com/4051/4638944629_5826109dcb.jpg"height="390"/></a></p>

<p>I open a separate outline view on the To do today container, and use the new checkboxes to mark things as done as I go, which provides extra motivation. I now make a container for each day, automatically named with the date, and a display expression to record how many Pomodoros were completed that day. I also have a number of Dashboard agents which collect and display the information on my performance over the past couple of weeks. During the day, I add any notes about things that crop up to the day container, which makes it easy to check back with a search and find out when I first heard about X or Y. At the end of the day, I apply a stamp to all the completed tasks, which moves them into the day container and colours them green for added cheerfulness. Any tasks I haven't finished remain in the To do container, and I review them the next day.</p>

<p>This system seems to be working really well for me, and even exam marking hasn't been as painful this year as in previous years. I've got quite good at estimating how many scripts I can mark in one Pomodoro, and having the clock ticking (literally) has helped to keep me focused. Meanwhile, my love and admiration for Tinderbox deepens. Its real strength is that all the data I had in my previous daybook incarnation is still there, and still accessible: all I've done is to use agents and containers and so forth to view it in ways that I never would have foreseen when I set it up. </p>

<p><sup id="f1-250510">1</sup> Ha! I wish... <a href="#r1-250510">&uarr;</a></p>

<p><sup id="f2-250510">2</sup> So you can imagine that when a colleague or a student knocks on your door 5 minutes before the end of a Pomodoro, stabby thoughts ensue. <a href="#r2-250510">&uarr;</a></p>



