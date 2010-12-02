-----
kind: article
title: "del.icio.us feed"
tags:
- blogging
created_at: 2004/04/17
permalink: delicious-feed
toc: false
-----

<p>I had been thinking for a while that I'd like to incorporate some quick links in the sidebar to things that I've read and enjoyed, but I was still deciding on the best way to do it. There are some nice WordPress solutions, like <a href="http://rebelpixel.com/" title="Rebelpixel.com">markku's</a> excellent <a href="http://rebelpixel.com/projects/wp-recent-links/" title="Project page for wp-recent-links">wp-recent-links</a>, but I was feeling exceptionally lazy and thought that there must be another way to do it.</p>

<p>Then I remembered the service which allows you to quickly mark and categorise links, and display them publicly: <a href="http://del.icio.us/" title="del.icio.us home page">del.icio.us</a>. It's really easy to set up an account, and you can see my page <a href="http://del.icio.us/bsag" title="My del.icio.us bookmark page">here</a>. There's also an easy method (using a <a href="http://del.icio.us/doc/html" title="Using the HTML feed">query string</a>) to get a raw <abbr title="HyperText Markup Language">HTML</abbr> fragment containing the last x links in your feed, which you can then include in your blog page.</p>

<p>So, I put a bit of PHP in my sidebar to pull in the last 10 links. You should be able to include <abbr title="HyperText Markup Language">HTML</abbr> files from remote sites using:</p>

<p><code>include 'http://somesite.com/file.inc';</code></p>

<p>but it seems that my hosts don't have the <code>allow<em>url</em>fopen</code> option enabled, so I had to think of another way to do it.</p>

<p>I found this code in the <a href="http://www.oreilly.com/catalog/progphp/index.html" title="See the book on O'Reilly.com">Programming PHP</a> book:</p>

<pre><code>
function include_remote($filename) {
 $data = implode("n", file($filename));
 if ($data) {
 $tempfile=tempnam(getenv("TEMP"),"inc");
 $fp = fopen( $tempfile,"w");
 fwrite( $fp, "$data");
 fclose( $fp );
 include($tempfile);
 unlink($tempfile);
 }
 return FALSE;
 }
include_remote("http://somesite.com/file.html");
</code>
</pre>

<p>This works very nicely when passed a formatted <abbr title="Uniform Resource Identifier">URI</abbr> to my del.icio.us feed.</p>

<p><strong>Update:</strong> <a href="http://mooseyard.com/wp">Jens</a> pointed out in the comments below, that such frequent fetching of the feed might violate the terms of service. At the very least, it isn't very efficient or polite. So here's another solution &mdash; I'm now fetching the feed like this:</p>

<pre>
<code>wget "http://del.icio.us/html/bsag/?count=10&extended=body
&tags=yes&tagsep=|&rssbutton=yes"
-O /LOCAL_PATH/delicious.html</code>
</pre>

<p>This should all be on one line. I run this command via <code>cron</code> every 6 hours, and then just include the local file <code>delicious.html</code> in the page.</p>
