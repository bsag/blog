-----
kind: article
title: "Fastmail"
tags:
- technology

- software
created_at: 2008/11/10
permalink: fastmail
toc: false
-----

<p>You might wonder -- in this age of free email accounts with gigabytes of storage -- why anyone would pay money for an email account. Well, I've just done exactly that.</p>

<p>For a while, I've been consolidating numerous email accounts into one account <a href="http://www.rousette.org.uk/blog/archives/gmail-email-consolidation/">using Gmail</a>, so I can receive email at my usual range of email addresses, but check, search and send my email within one account. It worked fairly well, but Gmail's quirky implementation of the IMAP protocol has its own irritations, and I experienced a few reliability problems. The reliability issue is especially difficult when you're forwarding all your email to an account. Also, while Gmail allows you to send email from your Gmail account as if it comes from another account that you control, it sets one of the headers (I can't remember which one offhand) as "From [my own address] on behalf of [gmail address]", which isn't what I wanted at all. That meant I had to set up send-only accounts in Apple's Mail, which was an unwanted complication.</p>

<p>So I began looking around for another email provider, and came across <a href="https://www.fastmail.fm/">Fastmail.fm</a>. It had some very good reviews from happy users and seemed to have all the features I needed and more, so I bit the bullet and paid for an account.</p>

<p>I'm <em>really</em> happy with Fastmail. It certainly lives up to its name, and while some of the features can be replicated (with some effort) using Gmail, the level of polish and sophistication is wonderful. It's ideal for consolidating accounts, because you can set up "Personalities" which specify not just which "From" address to use, but which signature to use, an address to "BCC" to and a sent folder to store the mail in, among other things. So you have a great deal of control of how you send mail. The magic thing is that when you send email from a desktop client with a particular from address, it sets up the rest of the rules for that Personality automatically.</p>

<p>The spam handling is also very sophisticated (with much more control than Gmail gives you), and if you want them, there are flexible rules for filtering incoming mail. I mostly use my desktop email client (Apple's Mail), but the web interface is also quite powerful and very fast. It doesn't have all the visual polish of Gmail, but it's very functional.</p>

<p>I'm not abandoning Gmail entirely: I still use my incoming Gmail address (forwarded to Fastmail automatically, of course), and then I automatically BCC all my incoming and outgoing mail to another secret Gmail account for backup and emergency access if Fastmail should ever go down. I may have to pay for Fastmail, but if feels as if it's worth every penny. My one and only minor quibble is that it only checks external POP accounts every hour at a maximum. That's not a problem for most of my accounts (which I just forward directly to the account), but I have frustratingly little control over my work email account and can only pull it into Fastmail using the POP checker. That's not really Fastmail's fault though, as it would be unreasonable to check POP mail much more frequently than that. In practice, if I'm expecting some urgent work email, I can log into the web interface and trigger the checking manually. If there was a way to do that with a script, I'd be a very content bunny indeed.</p>


