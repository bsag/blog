-----
kind: article
title: "IE6 nonsense"
tags:
- technology
created_at: 2002/11/01
permalink: ie6-nonsense
toc: false
-----

<p>It has been brought to my attention by a Windows XP user (in my experience, you can't avoid having at least a few friends who are tasteless enough to use Windows), that my carefully constructed, properly validated site breaks in IE6. Inexplicably, the content of the post squishes its left padding by about 1 pixel for each successive post, so that it ends up with the text to the left of its own left border (the vertical line between the publication date and the text). I have no idea why, or even how, this happens. In Chimera 0.5, IE 5.2 (Mac), Mozilla (Mac) and Opera 5 (Mac) it renders correctly to the pixel, but in IE6 (and probably IE5 Win too), it looks totally pants.</p>

<p>So, Windows users - bear with me. This seems to be caused by a CSS bug in IE, but for the life of me I don't know how to fix it without breaking the design for everyone else. By one of those humungous coincidences that occur from time to time, the day I found out about this was the same day that <a href="http://www.antipixel.com/blog/archives/2002/10/30/iepc_a_quick_note.html">Antipixel</a> posted about a similar problem with his site. I don't think the bugs are related, not that that makes it any less grindingly annoying.</p>

<p>I wish browser manufacturers would actually support <a href="http://www.w3.org/">web standards</a> properly and consistently. To be fair, it isn't just Microsoft that causes problems (though why they can make a nicely compliant browser for the Mac and a horrible bug-ridden one for Windows defeats me utterly). Omniweb 4.1.1 also breaks the design by putting all the publication dates at the top of the page (thanks!) and less seriously, by not rendering the dotted border around the sidebar. I might be forced to retain a two-cell table layout for each post, with everything else laid out with CSS. Sigh. If anyone knows of a fix for this problem, or can spot some moronic coding error in my markup, <a href="mailto:butshesagirl@rousette.org.uk">do tell</a>.</p>
