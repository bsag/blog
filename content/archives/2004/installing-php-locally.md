-----
kind: article
title: "Installing PHP locally"
tags:
- technology
created_at: 2004/04/26
permalink: installing-php-locally
toc: false
-----

<p>Now that I'm doing more PHP-based web development, I decided that it might be time to install PHP properly on my laptop and run Apache locally to test my sites. PHP is great, but there's great potential for messing things up royally, and in full and embarrassing view of your users.</p>

<p>There's a series of great tutorials on MacDevCenter starting <a href="http://www.macdevcenter.com/pub/a/mac/2003/04/04/apache_jaguar_pt1.html" title="Apache Web Serving with Jaguar">here</a>, which gives you a good overview of using Apache as a development server. <a href="http://www.sitepoint.com/article/os-x-web-development/1" title="Sitepoint.com - Configuring OS X for Web Development">Sitepoint.com</a> has some useful pointers if you want to set up VirtualHosts, so that you can have:</p>

<pre><code>http://test.blog.com/
</code></pre>

<p>point to the directory /Users/me/Sites/blog. You can set up as many of these as you like, so that links rooted in your online site still work in the test server. </p>

<p>I got all of that working fine, with a lot of help from the incredibly easy packages available at <a href="http://www.serverlogistics.com/" title="Server Logistics">Server Logistics</a>. They have Apache 2, PHP with all the bells and whistles on and MySQL, all of which can be installed with an easy <code>*.dmg</code> package. There are also useful preference panes for Apache and MySQL, which let you quickly turn the server on and off and edit the config files, which is very convenient. It all went amazingly smoothly. Now I should be able to tinker away to my heart's content in the privacy of my own machine.</p>


