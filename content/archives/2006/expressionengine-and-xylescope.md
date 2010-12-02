-----
kind: article
title: "ExpressionEngine and XyleScope"
tags:
- blogging
created_at: 2006/03/27
permalink: expressionengine-and-xylescope
toc: false
-----

<p>At the weekend, I finished the long-overdue re-design of my <a href="http://www.rousette.org.uk/projects/">project site</a> for Tracks<sup id="r1-270306"><a href="#f1-270306">1</a></sup>. I used to use <a href="http://www.textpattern.com/">Textpattern</a> to run the site, but while it was pretty powerful, I found doing some advanced things a little tricky. I spent a while looking around for other solutions, and eventually decided on <a href="http://www.pmachine.com/ee/">ExpressionEngine Core</a>. You have to pay for the Personal version, but the Core is free for non-profit use and has the all the features I need. If I ever find myself flush with cash (heh, I wish), I could always upgrade to the Personal version without any hassle.</p>


<p>ExpressionEngine (EE) is a pretty amazing package. If you want to build a fairly simple site like a blog, then you're probably better off with <a href="http://wordpress.org/">Wordpress</a> or something similar, but if you have more complicated needs, EE works wonderfully. I wanted to have distinct sections, some of which would be more or less static (like the front page), and others that would be dynamic (news, articles, downloads etc.), and I needed at least the possibility to have different lumps of content in each of the sections. So, for example, on most of the pages I list the last 5 news items and the last 10 articles in the sidebar, but in the manual section, I generate a table of contents for the manual, and restrict the search form to the manual itself.</p>

<p>I suspect that some of that might have been possible with Textpattern, but I never did quite manage to get my head around it. In contrast, EE (once you've realised that 'weblogs' are just lumps of content, and can be thought of as sections) was quite easy to deal with. Each section can have its own pages, stylesheet, RSS feed and even custom fields. I took advantage of this with the downloads section, so that each entry has a title, description, version, download URL and Subversion URL. That makes it much easier to be consistent when listing releases of Tracks.</p>

<p>It still needs some tweaking here and there (there are XHTML and CSS validation errors that I need to clear up among other things), but I'm fairly happy with it. During the design process, I tried out <a href="http://www.culturedcode.com/xyle/">Xyle scope</a> which allows you to load a webpage and its associated CSS file and explore the structure. It's incredibly useful, and helped me track down thorny CSS problems, when a rule was being over-ridden somewhere else in the cascade. Margins always baffle me slightly, but looking at a page with Xyle scope indicating the margins and padding really helped me to understand what was going on. It's also very useful for learning CSS tips and tricks. If you see an interesting effect on a website, you can load it up in Xyle scope and see how they did it.</p>

<p><sup id="f1-270306">1</sup> Note that the URL for the feed has changed. I'm trying to find a way to redirect feeds, but in the meantime you can change it manually to <a href="http://www.rousette.org.uk/projects/tracks/rss_2.0/">this</a>.
<a href="#r1-270306">&uarr;</a></p>

