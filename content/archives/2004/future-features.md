-----
kind: article
title: "Future features"
tags:
created_at: 2004/11/29
permalink: future-features
toc: false
-----

<p>I have a few features I'd like to add to my <a href="http://www.rousette.org.uk/blog/archives/2004/11/28/rails-gtd-application/">GTD Rails app</a> eventually. I can see how I'd code some of them now (I just haven't got around to adding them. Others will take a bit of thought and some more learning about Ruby before I'm ready to tackle them:</p>

<ul>
<li><strong>List appointments</strong>. It would be nice to pull in the appointments for the current day from iCal, so that I can see everything I have to do at a glance. I think it should be possible to use <a href="http://www.infinitenil.com/developers/iCal.rb">iCal.rb</a> for this purpose &mdash; it would just be a read-only listing.</li>
<li><strong>Dependencies</strong>. At the moment, all items in Projects appear in the main listing. I'd like to set up some way of marking some items in Projects that are contingent upon other items. That way, I could suppress the listing of those items until they <em>can</em> actually be done. One way of getting round this would be to set the context of those items to 'Waiting' so that they appear at the bottom of the list, and there's some acknowledgement of the fact that these things can't be done right now.</li>
<li><strong>Recurring action items</strong>. Sometimes you have an action item that regularly recurs. It would be good to be able to set the recurrence, and have the item mark itself as un-done after a certain interval, like you can do with <a href="http://www.llamagraphics.com/index.html">Life Balance</a>.</li>
<li><strong>Statistics</strong>. This probably <em>really</em> marks me out as a geek, but I love to have statistics and graphs. I think in this case it would really help me to understand how I work. For example, if I could plot my 'completion index' (no. completed items/no. items added per unit time) against number of items added, I could see whether I tend to wait for quiet periods before churning through work, or if I procrastinate until the situation becomes critical. I have my suspicions, but I'd like some hard data. This means that I'm going to have to learn how to draw graphs using Ruby. Does anyone know of a good module/library for this?</li>
<li><strong>RSS/PDA compatible version</strong>. This shouldn't be too hard, as Rails comes with built-in commands to build RSS feeds.</li>
</ul>

<p>This will probably all be a while in coming, as I want to tidy up the existing code and incorporate the fixes people have suggested so far, as well as making a proper edit action. I must say that it has really been fun making this app, and I've learned a lot faster than I would have done if I was just reading a book about Ruby (although <a href="http://www.pragmaticprogrammer.com/titles/ruby/index.html">Programming Ruby</a> has been a vital reference and source of information and inspiration).</p>


