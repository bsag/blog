-----
kind: article
title: "Ta-da lists"
tags:
- technology
created_at: 2005/01/23
permalink: ta-da-lists
toc: false
-----

<p>Partly because of my own project, <a href="http://www.rousette.org.uk/projects/">Tracks</a>, I'm interested in seeing how other people implement todo type lists. So I signed up for a <a href="http://www.tadalist.com/">Ta-da list</a> to see how they were doing it. I was pretty impressed. It's intended to be a fairly simple system to tempt people into signing up for a full <a href="http://www.basecamphq.com/?ref=tadapub">Basecamp</a> account, so there are no categories, due dates or anything like that. However, they do have some really neat ideas.</p>

<p>Much of the interface is implemented using <a href="http://jibbering.com/2002/4/httprequest.html">XML-HTTP Request</a> and Javascript, so that the whole page doesn't have to be refreshed for each change. Actions like adding an item and checking an item off as completed appear to happen nearly instantaneously. They also have a nice visual indicator of how many items a list contains on the overview page; each list has a blob icon next to it, and the size is proportional to the number of uncompleted items. You can share selected lists publicly, subscribe to an RSS feed or get the contents of lists emailed to you. It's all pretty nice &mdash; simple in the good sense of elegant and sufficient.</p>

<p>One thing it and <a href="http://www.flickr.com/">Flickr</a> showcase is the power of XML-HTTP Request to narrow the usability gap between ordinary applications and web-based applications. I'm going to look into the documentation for it to see if I could use XML-HTTP in Tracks.</p>


