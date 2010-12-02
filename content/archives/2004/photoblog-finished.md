-----
kind: article
title: "Photoblog finished"
tags:
- mumblings
created_at: 2004/04/25
permalink: photoblog-finished
toc: false
-----

<p>I've finally finished messing about with my <a href="http://www.rousette.org.uk/wingsopenwide/index.php" title="Wings Open Wide">photoblog</a>, and I've set up redirects from the old entries to the corresponding entries in the new blog. I say 'finally finished', but of course a true geek never finishes tinkering <img src="http://www.rousette.org.uk/images/smileys/grin.gif" width="19" height="19" alt="grin" style="border:0;" />.</p>

<p>I'm quite pleased with the way it turned out. I've <a href="http://www.rousette.org.uk/blog/archives/2004/04/19/pictorialis/" title=" Pictorialis">mentioned before</a> that I used an adaptation of the <a href="http://wordpress.org" title="WordPress">WordPress</a> publishing platform called <a href="http://mindfulmusings.net/weblog/2004/4/15/wordpress-photoblog-new-version/" title="Pictorialis">Pictorialis</a>, which has been developed by <a href="http://mindfulmusings.net/weblog" title="Mindful Musings">Mark</a>. It has loads of great features, like automatic uploading, re-sizing and thumbnailing of images, and it also sucks down the EXIF data provided by the camera, so that you can show the shutter speed, aperture and so on, which can be very useful.</p>

<p>However, the default thumbnails were rectangular, and used the full frame, whereas I had always used square thumbnails which only show a portion of the full image. After asking Mark's permission, I hacked the source and added the ability to automatically copy a randomly selected square region of the image to use as a thumbnail. It wasn't a complicated hack, but to my utter amazement (considering I have only been writing PHP for a few weeks), it actually worked. Better still, Mark is going to incorporate it into the next release of Pictorialis &mdash; yay!</p>


