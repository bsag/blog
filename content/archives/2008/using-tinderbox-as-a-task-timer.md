-----
kind: article
title: "Using Tinderbox as a task timer"
tags:
- technology
- software
created_at: 2008/09/23
permalink: using-tinderbox-as-a-task-timer
toc: false
-----

<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/times_outline-20080918-155003.png" /></p>

<p>I mentioned a little while back that I'm using <a href="http://www.eastgate.com/Tinderbox/">Tinderbox</a> as a kind of <a href="http://www.rousette.org.uk/blog/archives/tinderbox-daybook/">daybook</a> to record thoughts, ideas, notes and activities throughout the day. I'm really enjoying using it, and the experience of gradually adapting the structure of my Tinderbox document has been interesting and fun. I also posted a request a while ago for suggestions for simple software that would allow me to <a href="http://www.rousette.org.uk/blog/archives/logging-time/">log my time</a> at work. People responded with some great suggestions, and I've since found a few more. For example, I love <a href="http://code.google.com/p/redbook/downloads/list">RedBook</a>: it's a commandline task logger written in Ruby, which has a simple method of storing the data (as YAML-format files) and can export and display the data in a number of formats.</p>

<p>However, in the end -- good though they were -- these applications felt like adding another layer of complexity on to something that I wanted to be transparent and effortless. Then it hit me that I was already jotting down what I was doing in Tinderbox, so if I could store start and stop times as attributes of those notes, I'd be half way to logging my time. What follows is probably only interesting for fellow Tinderbox nerds or serious geeks. You have been warned <img src="http://www.rousette.org.uk/images/smileys/grin.gif" width="19" height="19" alt="grin" style="border:0;" /></p>

<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/weekly_times_sparkline-20080918-154828.png" /></p>

<p>So I created a new prototype called 'timecard' which has key attributes of startTime, stopTime, intDuration (calculated in seconds from the start and stop times) and duration (which is nicely formatted in text as hh:mm:ss). I create a note as usual, using the title of the note to describe the activity,  then drag it to an adornment, which has some <code>OnAdd</code> rules to set the tag attribute to 'timed', and set startTime to the time now. When I'm finished with that activity, I drag the note to another adornment which sets the end time to now and calculates the duration in seconds by passing the start and end time to a little Ruby script I wrote, helped a lot by a <a href="http://www.eastgate.com/Tinderbox/forum//YaBB.pl?num=1219506354/2#2">thread</a> on the Tinderbox forums. The notes can sit on that adornment until I've got time to take stock, or the end of the day, whichever comes sooner! Then I drag them to another adornment, which just shoots them back into a Timecards container. I've set the adornments up to be a kind of electronic version of one of those time card punch machines you see in factories, and that's the way I think of it.</p>

<p>I've also set up a variety of ways to view the information that this system collects. In the first screenshot, you can see that I've set up a <code>DisplayExpression</code> for the agent which collects today's timecards to show me the total amount of time I've worked so far today. In the second, I've used the spiffy new <code>bargraph()</code> function to set the <code>Pattern</code> attribute of an agent collecting the past week's worth of timecards to show the total time for each day in a kind of sparkline graph. When I've accumulated enough data, I'll probably do the same for the past few months as well. Finally, I've created an HTML export template for the timecards, which formats the task descriptions and times for an agent (usually today's times) as a pretty HTML table, so I have a summary record for each day.</p>

<p>Since I don't have to collect precise hours for invoicing or anything like that, the absolute values are not particularly important. I only time tasks when I'm properly focussed, not when I'm being interrupted by calls, conversations with colleagues and so on, so it's quite a good relative measure of how much solid, productive work I'm able to accomplish. It has been really interesting to track it from day to day. I'm actually using it as a sort of game to motivate myself to devote uninterrupted time to important tasks, just so that I can watch the bars climb for each day!</p>


