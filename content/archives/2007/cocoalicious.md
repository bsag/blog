-----
kind: article
title: "Cocoalicious"
tags:
- blogging
- technology
- software
created_at: 2007/11/14
permalink: cocoalicious
toc: false
-----

<p>I've been using <a href="http://ma.gnolia.com/">ma.gnolia</a> for my <a href="http://www.rousette.org.uk/blog/archives/social-bookmarking-shootout-diigo-vs-magnolia/">online bookmarking</a> for a little while now, and the non-private bookmarks appear automatically in the sidebar of this site. I like ma.gnolia a lot, but I've had a tendency to use it mostly for bookmarks that want to publish on this blog, and largely in a write-only way. Part of that is because it always seems like a bit of work to log in to ma.gnolia and search through bookmarks for one that I'm looking for. So for sites that I'm marking for my own use -- ones that I know that I'll want to refer to later -- I tend to use Safari's own bookmarking feature. But that means that I lose the tagging capability, and I have to look in two places if I can't remember where I saved something.</p>

<p>There are plenty of desktop bookmarking applications which access your de.icio.us bookmarks, but not so many for ma.gnolia, being a relative newcomer. However, they publish an <a href="http://wiki.ma.gnolia.com/Mirror&#x27;d_API">mirrord API</a> which (as the name suggests) mirrors the de.icio.us API. This means that you can use many of the desktop clients intended for de.icio.us, as long as the software lets you specify the URL of the API. So I've started using <a href="http://www.scifihifi.com/cocoalicious/">Cocoalicious</a>, which is a very nice Open Source de.icio.us client. The trick seems to be to enter the API as follows:</p>

<p><code>http://your_username:your_password@ma.gnolia.com/api/mirrord/v1</code></p>

<p>and then enter a single space for both your username and password when prompted. The rating star system in Cocoalicious doesn't link up with the rating stars in ma.gnolia, but everything else works perfectly. It's a very nice bit of software -- it's pleasingly simple to add links via a bookmarklet in your browser, but also very fast to find what you want by text in the URL, description or by the tag. Now I'm saving all my bookmarks (private and public) in ma.gnolia, and accessing them using Cocoalicious.</p>



