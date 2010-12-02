-----
kind: article
title: "The sad story of Mailbox"
tags:
- rants
- technology
created_at: 2007/11/22
permalink: the-sad-story-of-mailbox
toc: false
-----

<p>Back when I lived in Oxford, I used <a href="http://www.mailbox.net.uk/">Mailbox</a> as my broadband provider. They weren't the cheapest around, but they were really reliable, and had the best customer support I've ever come across. It seems incredible (not to mention quaint) to say so now, but when you phoned them for support, <em>a real human would answer the phone immediately</em>. No pressing 4 divided by the number you first thought of to report a fault, or being robotically reassured <em>ad infinitum</em> that my business was very important to them. Shocking isn't it? It got better though, because once your call was answered by a real human, they would quickly and efficiently solve your problem, without being patronising. I once had a problem with connecting to their broadband service (which turned out to be a BT-produced problem rather than Mailbox's fault). I called them in the evening, and the guy on the other end explained very clearly what I needed to do to fix it. I followed the instructions, which worked perfectly, and settled down to surf and email. About half an hour later, the phone rang, and to my utter amazement, it was the engineer guy -- wait for it -- <em>calling to check that the instructions worked correctly</em>. It doesn't get much better than that, in my opinion.</p>

<p>When we moved to Birmingham, the house we rented already had a Telewest broadband account, so we used that, shifting to Zen when we bought our house, because Mailbox had become rather un-competitive, price-wise, with other providers. In retrospect, I'm glad I made that decision.</p>

<p>In 2005, Mailbox <a href="http://www.thamestechwire.com/ttw/2005/09/ukbased_busines.html">was acquired</a> by <a href="http://www.186k.co.uk/">186k.com</a>. I know this because even though I had stopped my broadband account with them, I kept them as registrar for the two domains I had registered with them when I had an account. Gradually, all my interactions with them became inefficient and impersonal, not to mention more expensive. But inertia is a powerful force, and I stuck with them in the name of minimising hassle and disruption. I feel like an idiot for doing that now, because it has cost me a lot of money and more hassle than transferring my domain earlier would have done.</p>

<p>A couple of weeks ago, a Tracks user alerted me to the fact that the DNS for rousette.org.uk was pointing to de-comissioned DNS servers at TextDrive (thanks, Sean!). I'm fairly sure, thinking back, that I asked Mailbox to change the DNS entries a long time ago, but to be sure, I asked them again, only to be told that they were already pointing at the new servers. However, whois still showed the old records. Caching of DNS records can complicate matters so I'm willing to give them the benefit of the doubt, but I still suspect that they didn't do the update properly, leaving the old server references along side the new ones.</p>

<p>That was the last straw, and after doing a search for reliable registrars, I settled on <a href="https://www.gandi.net/">Gandi</a>. They have been really efficient, and I now have a nice web control panel for administering my domains. The first thing I did, of course, was the set the DNS records straight, and wasn't overly surprised to find that the whois record updated to reflect correct DNS information almost immediately. I realise that domain registrations are probably something of a loss-leader for companies like Mailbox, and that it doesn't make financial sense for them to continue to act as the registrar for customers who no longer have a broadband account with them. But even so, I was paying for the nose for not very good service. They were charging more than seven times what I am paying with Gandi now, and they charged me an arm and a leg to allow me to transfer the domain too. Even Nominet charges half the price of Mailbox for domain transfers. I wish I'd done it sooner, but my domain renewals and management should be a lot easier and cheaper from now on.</p>


