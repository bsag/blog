-----
kind: article
title: "Testing from TextMate"
tags:
- technology
- software
created_at: 2006/12/03
permalink: testing-from-textmate
toc: false
-----

<p>Ignore this, I'm just testing out using the blogging bundle in <a href="http://macromates.com">TextMate</a> with ExpressionEngine.</p>

<p><strong>Update 2006-12-03 18:38:</strong> Since it does indeed now work, I'll tell you what I did to get it working, in case anyone else is having problems using the TextMate Blogging bundle with ExpressionEngine.</p>


<p>After a fair bit of messing around, I found out that there are two snags which stop it working out of the box. The immediate problem is that, using the metaWeblog API with ExpressionEngine, the URL for the endpoint is somewhat differently formed than those for MovableType or Wordpress. You'll end up with something that looks a bit like this:</p>

<pre>
<code>
 http://yourdomain.com/path_to_EE/index.php?ACT=25&id=1
</code>
</pre>

<p>The id part is the problem, and isn't recognised by default by the blogging bundle. You need to find the file <code>blogging.rb</code>, which should be found somewhere like:</p>

<pre>
<code>
 /Applications/TextMate.app/Contents/SharedSupport/Bundles/
 Blogging.tmbundle/Support/lib/blogging.rb
</code>
</pre>

<p>You need to edit the section starting at line 167, so that it reads like this:</p>

<pre>
<code>
 if @endpoint =~ /#(.+)/
   @blog_id = $1
 # EE format of blog id in endpoint
 elsif @endpoint =~ /&id=(.+)/
   @blog_id = $1
 else
   @blog_id = "0"
 end
</code>
</pre>

<p>Now the bundle should be able to parse the id of your blog from the URL. The second problem seems to be to do with Ruby's XMLRPC library (at least in version 1.8.4). The library tries to parse the datetime string that ExpressionEngine returns with a list of posts, but fails because there's an extra 'Z' at the end of the string. You can fix that by changing line 87 so that it reads:</p>

<pre>
<code>
 if str =~ /^(-?dddd)(dd)(dd)T(dd):(dd):(dd)Z?$/ then
</code>
</pre>

<p>Then it should all work fine. I recommend making a copy of the existing Blogging bundle, renaming the copy, and making the changes to the copy. Then you can double click the bundle and it should be installed in your <code>~/Library/Application Support/TextMate/Pristine Copy/Bundles/</code> directory. One slight wrinkle is that you need to look in your bundle copy and change the UUID value and name in <code>info.plist</code>, or TextMate will tell you that you already have the Blogging bundle installed. I'm not sure whether this is the neatest way to do it if you don't want to overwrite the version that ships with TextMate -- does anyone have a better idea?</p>

