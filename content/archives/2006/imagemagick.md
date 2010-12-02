-----
kind: article
title: "ImageMagick"
tags:
created_at: 2006/07/24
permalink: imagemagick
toc: false
-----

<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/im_button.png" border="0" alt="image" name="image" width="181" height="181" /></p>

<p>Due to a very unfortunate mishap with a serial code (not my fault, I hasten to add), I haven't been able to use my work-bought, licensed copy of Adobe Creative Suite---a maddeningly frustrating and expensive state of affairs. So in lieu of solving that particular problem right now, I've been looking around for other bitmap and vector editors. In the long run, I'd like not to have to depend on Adobe because their products are so expensive.</p>


<p>I don't really need photo editing tools, because those included with Aperture serve my needs pretty well. What I need is something for figures (a mixture of vector and bitmap images and text), resizing images, changing resolution, creating web graphics and so on.
Of course, the <a href="http://gimp.org/">Gimp</a> sprang to mind, and it seems to have improved enormously since I last tried using it. Even better (if you're slightly familiar with Photoshop) is <a href="http://plasticbugs.com/index.php?p=241">Gimpshop</a>. It works quite well on MacOS X, though there are the usual slight irritations at the different hotkeys (Ctrl-S for save, rather than Cmd-S, etc.). It seems to do most of what I need, though occasionally I've been tripped up by something being more difficult than I'd expected. For example, I can't for the life of me work out how to resize text, though I've probably missed something incredibly obvious.</p>

<p><a href="http://www.inkscape.org/">Inkscape</a> is great for vector art, and despite being much younger than the Gimp, it's impressively featured and polished. Again, it works well on MacOS X, but is limited to running under X11 as Gimp/Gimpshop is.</p>

<p>Out of curiosity, I also took a look at <a href="http://www.imagemagick.org/script/index.php">ImageMagick</a>. It's a command-line image editor, primarily intended for automated processing and manipulation of images from other desktop or web applications. I managed to install it eventually via Darwinports, and was blown away by how powerful it is. I reckon that if you know what you're doing, you can probably reproduce pretty much anything that you could do with Photoshop. But knowing what you're doing is the problem. Quite apart from the fact that you have to interact with it more or less mathematically (defining positions with numerical co-ordinates, rather than dragging something around until it looks right), the documentation that comes with it explains what the gazillion options <em>do</em>, but not really how to achieve particular effects. However, this page of <a href="http://www.cit.gu.edu.au/~anthony/graphics/imagick/">ImageMagick examples</a> is really inspirational, and extremely useful.</p>

<p>The image at the top is my attempt to try to replicate the <a href="http://www.rousette.org.uk/projects/">Tracks</a> logo using ImageMagick, following Anthony's <a href="http://www.cit.gu.edu.au/~anthony/graphics/imagick/advanced/#gel_effects">gel effect example</a>. It's not perfect, and if I understood the commands better I could probably improve it a bit, but I'm still quite pleased with the result.</p>

