---
created_at: 2011/02/27
kind: article
publish: true
tags: [geek, software, technology]
title: "Sharing iTunes"
permalink: sharing-itunes
---

For a while now, I've been wondering how best to handle sharing the collection of digital music I've built up with other computers in the house. This collection is mostly composed of rips of CDs that I own, but there are also a few albums that I've bought via the iTunes store or Amazon. I keep the main collection on the Mac mini in the living room, and that also serves as the library which the [Squeezebox Server][] serves up to the three Squeezebox music players I have scattered around the house. So, within our house, listening to music is covered pretty well by the Squeezeboxes, and we can listen to anything in the iTunes library of the Mac mini via the players.

However, syncing music onto an iPod or iPhone is a different matter, and there I had a problem. I have been using the 'Home Sharing' feature of iTunes to copy any new music into the library on my iMac so that I can sync it with my iPhone, but this means that I end up with music duplicated on my iMac, which I don't really need or want. I wish that you could browse and sync playlists to an iPod/iPhone via Home Sharing, but you can't do that at the moment. Home Sharing feels like an unfinished feature, and I hope at some point that Apple acknowledges the fact that many people have the bulk of their music on a master computer, and want to share it with other computers on the network, as well as mobile devices.

I also looked into other options like [SuperSync][], which is an application which makes it easier to sync whole or partial libraries between computers, and also play music from your home iTunes library over the internet (which requires a bit of tinkering with your router settings in most cases). It seems to work well, but it was really overkill for what I wanted, since I didn't want to _sync_ my library, but just share it without having to keep the media files on more than one computer.

In the end I turned to my copy of [Take Control of Sharing Files in Snow Leopard][], which has some great advice about how to handle this kind of thing, and explains the pros and cons of each option. What I did was to set up the iTunes Media folder on my Mac mini as a shared folder, then mount that folder on my iMac. I then set the preferences in my copy of iTunes to use that folder as the Media folder location, and unchecked the options to Keep the iTunes Media folder organised and to copy files to the folder when adding to the library. Then I dragged all the files in the mounted shared folder to iTunes to add them to my library. It took a while to process them all and add the artwork, but it seems to have worked beautifully.

I need to add new music to the Mac mini downstairs, but to help the automate the process of importing any new music to my iTunes library on the iMac, I have set up a rule in [Hazel][] (a terrific little utility which I find incredibly useful) to watch the iTunes Media folder and when the date added of any new files is this week, import them into iTunes. Hazel ignores files it has matched before, so this should only trigger once for each new file added. I've also set up a couple of playlists to help fill my iPhone with music: one is a smart playlist which chooses random tracks up to a maximum of 5GB, and the other is a manual playlist which I can use to add whole albums that I particularly want to listen to right now.


[Take Control of Sharing Files in Snow Leopard]: http://www.takecontrolbooks.com/snow-leopard-sharing
[Squeezebox Server]: http://en.wikipedia.org/wiki/Squeezebox_Server
[SuperSync]: http://supersync.com
[Hazel]: http://www.noodlesoft.com/hazel.php
