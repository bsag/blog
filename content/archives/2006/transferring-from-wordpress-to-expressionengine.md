-----
kind: article
title: "Transferring from WordPress to ExpressionEngine"
tags:
- blogging
- technology
- software
created_at: 2006/11/07
permalink: transferring-from-wordpress-to-expressionengine
toc: false
-----

<p>As I <a href="http://www.rousette.org.uk/blog/archives/tinkering-abounds/">mentioned</a> a couple of days ago, I've recently transferred this site over to using <a href="http://pmachine.com/ee">ExpressionEngine</a> (EE) from <a href="http://www.wordpress.org">WordPress</a>. WordPress is an excellent tool, but if you want to do a bit more then EE is really superb. The templating system takes a little while to get your head around (not that it's particularly difficult, it just does things a little bit differently), but once you have, there's more or less no end to what you can do. In the process of rebuilding this site, I've frequently thought, "I wonder if I can do this..." and found that I can. EE has enormous flexibility, with 'weblogs' which are just containers for data, and can be displayed in any way you choose. One of the things I initially worried about was whether I could replicate the domain structure of my old site so that old permalinks could be redirected, or would just work. I found (after a few questions on the support forum), that EE could be installed in a subdirectory of my web root, but if I copied a couple of files into the webroot, that subdirectory would not need to appear in the URL. Then I could just name template groups appropriately to form what would appear to be subdirectories of the main domain (/blog, /wingsopenwide etc.)--nifty. An .htaccess rule (again, a solution provided by the support forum) transforms the old permalinks to individual articles (which had the article date in them) into the new <code>/blog/archives/entry-title</code> format.</p>

<p>I thought I'd document the process I went through in a little more detail--partly so that I don't forget what I did, but also in case anyone else is trying to solve similar problems:</p>

<ul>
<li>Importing the old entries and comments using WPExport</li>
<li>Translating the templates</li>
<li>Setting up the structure of the site</li>
<li>Using the gallery to replace the old Wings Open Wide photoblog</li>
<li>Entry Linker plugin</li>
<li>Using phpThumb to dynamically generate thumbnails</li>
<li>Creating the Media blog</li>
<li>Setting up a dynamic link list via NewsGator</li>
</ul>


<h4>Importing the old entries and comments</h4>

<p>Obviously this was the first thing I looked into. With more than 1,040 entries and over 4,400 comments, I didn't want to lose any of that data. The apparent problem was that WordPress doesn't have an 'export to EE' facility, and EE doesn't have an 'import from WordPress' feature. However, EE can import from a number of formats, one of which is the <a href="http://www.sixapart.com/movabletype/docs/mtimport">MTImport format</a>. The <a href="http://wp-plugins.net/plugin/WPexport_plugin/#plugin_294">WPExport plugin</a> lets you export into MTImport format (among others), and that proved a good start in the process. I did find that I had to manually clean up the text file a bit, because my first attempt missed a few of the entries and comments. Anyway, if you know the correct format, it's not difficult to do with a quick search and replace.</p>

<h4>Translating the templates</h4>

<p>I thought this would be a difficult step, but actually, it turned out to be pretty easy. I kept more or less the same design for the blog, so it was just a case of cutting and pasting the style sheet across, and then pasting the old templates into new ones, and substituting in EE tags for the old PHP content tags. I redesigned Wings Open Wide, but even that was fairly easy and didn't take too long. EE allows you to create fragments of HTML or combinations of HTML and EE tags and embed those in other templates, so it's easy to abstract repeated sections like headers and footers out so that you only have to edit them in one place.</p>

<h4>Setting up the structure of the site</h4>

<p>As I said in the introduction, I decided to install EE into its own subdirectory of the web root, then it was just a case of copying <code>index.php</code> and <code>path.php</code> into the web root, and editing <code>path.php</code> to reflect the correct path to the system directory, and the default template group and template for the site. Then each of the 'sub-sites' here (blog, wingsopenwide and media) is a template group with a number of templates within. My old feed URL was <code>http://www.rousette.org.uk/blog/feed/rss2</code>, and I didn't want to break that if possible. But I initially thought that the feed part of the URL might be problematic because you can't nest a template group within a template group. However, EE's flexibility came into play again. There's an EE tag which allows you to parse the URL and conditionally display different content. So I set up a template called 'feed' which had the following code to load either the Atom or RSS 2 feed depending on what was called (I've had to replace the {} with [] to get it to display):</p>

<pre>
<code>
[if segment_3 == "rss2"]
  [embed="blog/rss2"]
[/if]
[if segment_3 == "atom"]
  [embed="blog/atom"]
[/if]
</code>
</pre>

<h4>Using the Photo Gallery module</h4>

<p>My photoblog, Wings Open Wide, had been broken for quite a while, as many people had noticed. Unfortunately, I couldn't export the old entries and comments, but I wanted to revive it and start again. I've been posting photos on <a href="http://flickr.com/photos/bsag/">flickr</a> fairly regularly, but I missed having my own, personalised space. Setting up a gallery is quite similar to setting up a weblog, and it's a very simple process. You can specify where you want to upload photos to, what size you want them to be, whether you want thumbnails generated and so on. You can even set up a moblogging command so that you can email pictures and text in and have them posted with a preselected template. There's a nice batch posting process as well, where you upload a batch of files to a pre-determined directory and then step through them to add titles and captions and so on. In the end, I turned off thumbnailing and resizing for reasons I'll explain below. I went for quite a simple structure and design, so it was quite quick to construct.</p>

<h4>Entry Linker plugin</h4>

<p>One oddity about the tags available in the gallery is that the next/previous links only cycle within a category, not through all the images in date or title order. That took me quite a while to work out, because while I was testing, I had only two images in different categories. If there are no other images in a category, the tags won't appear. Luckily, <a href="http://www.antipodean.org/">Tim Griffiths</a> also thought that this was a strange limitation and created the <a href="http://www.pmachine.com/plugins/entry-linker/">Entry Linker plugin</a> which allows you to cycle through all the photographs with the next and previous links.</p>

<h4>Using phpThumb to dynamically generate thumbnails</h4>

<p>The EE thumbnailer can only generate thumbnails which are rectangular, whereas I wanted square thumbnails which where cropped portions of the original (like flickr produces). It also seems a bit of a waste of web space to generate loads of thumbnails for your images. After a lucky search I found <a href="http://phpthumb.sourceforge.net/">phpThumb</a>, a really fantastic set of scripts which uses either the GD or ImageMagick libraries to dynamically generate images. You just use a call to the PHP script in place of a normal image tag, and you can generate an image of any size from a source image. You can crop it, change the quality, apply an unsharp mask or other filters, watermark it and a host of other features. It also caches the generated files, so after the first call, they load quickly.</p>

<p>That meant that it was possible for me to display 100x100 pixel square thumbnails on the index page of <a href="http://www.rousette.org.uk/wingsopenwide/">Wings Open Wide</a>, and 50x50 pixel thumbnails of the same images in the header of this site, without having to maintain two sizes of image manually. I could also display the main images this way too, but I decided to resize the image before uploading to avoid storing huge original images on the server. I'd really recommend phpThumb if you post images on a photoblog.</p>

<h4>Creating the Media blog</h4>

<p>I managed to replace all of the WordPress plugins I used (either with EE plugins, or with built-in features), but I was a bit stuck when it came to <a href="http://www.sozu.co.uk/software/amm/">Amazon Media Manager</a>, originally developed by <a href="http://www.denyerec.co.uk/">Denyerec</a>. I used to use this to display what I'd recently watched, read or listened to in the sidebar. There are a couple of EE plugins to deal with Amazon items, but they didn't quite do what I wanted, so I decided to create my own solution. This is where the custom fields EE has come into play. You can create sets of custom fields to hold any kind of data, which can then be displayed in your templates using tags, just like the title and body of an entry. So I created a separate weblog, Media, to hold my stuff. I then created a couple of extra fields: one to hold the Amazon ASIN code, and one to hold my star rating of the item. Then I created a couple of templates to display the items. One produces a small listing with the image of the item, title, a short comment and the rating. The other produces a larger scale display with a bigger image and the full review (if there is one). You can see the media page <a href="http://www.rousette.org.uk/media/">here</a>.</p>

<p>Both kinds of template use the ASIN to construct an image tag to display the product image from Amazon, and link to the Amazon listing using my Affiliate ID, so that if you buy something after clicking through the link, I get a small percentage of the sale<sup id="r1-071106"><a href="#f1-071106">1</a></sup>. The template also selects the appropriate star image depending on my rating. Because data from any weblog can be shown anywhere, I can use the appropriate tags to pull in the last three items from the media blog into the sidebar here, but show all of them on the main media page. The same kind of approach displays the last six comments in the sidebar, and the last five images from Wings Open Wide at the top. One thing this system doesn't do which Amazon Media Media manager does is to actually find the ASIN given a search term, but it's easy enough to do a quick search on Amazon to find the information you need.</p>

<h4>Setting up a dynamic link list via NewsGator</h4>

<p>I used to use the links feature of WordPress to display my links to other blogs and sites in the sidebar, but for some reason, I never managed to keep it updated. Links would break, or sites would go quiet and be abandoned, but there they would still be in my sidebar. I use <a href="http://www.newsgator.com/NGOLProduct.aspx?ProdID=NetNewsWire">NetNewsWire</a> to read my RSS feeds, and it now synchronises with the online NewsGator aggregator automatically. This provides a way to publish a list of feeds (and sites) you subscribe to, which should make it much easier to keep it up to date because I'll notice when a site changes its URL or goes dark. It's also very easy to add a new item.</p>

<p>It's been quite fun setting this up, and I think I'm pretty happy with the result. Once I've had a little break from it, I'll move the <a href="http://www.rousette.org.uk/projects/">Tracks site</a> over as well, and then I'll have everything easily accessible under the same system. I'd like to thank Leslie Camacho again for the licences, and also lots of people on the pMachine support forums for valuable and friendly help when I needed it. This is now the fourth incarnation<sup id="r2-071106"><a href="#f2-071106">2</a></sup> of 'but she's a girl', and I sometimes think that I enjoy the process of tinkering with the site itself as much as I enjoy the process of writing for it.</p>

<p><sup id="f1-071106">1</sup> I make about enough to buy a CD or DVD a year through this, but it's money for nothing from my point of view, so I think it's worth it. <a href="#r1-071106">&uarr;</a></p>

<p><sup id="f2-071106">2</sup> I started with Tinderbox, then moved to MovableType, then to WordPress and now EE. <a href="#r2-071106">&uarr;</a></p>

