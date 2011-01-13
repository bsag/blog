require 'nanoc3/tasks'
require 'rubygems'
require 'fileutils'
require 'open-uri'
require 'simple-rss'
require 'time'
require 'enumerator'

namespace :create do

  desc "Creates a new article"
  task :article do
    $KCODE = 'UTF8'
    require 'active_support/core_ext'
    require 'active_support/multibyte'
    @ymd = Time.now.strftime("%Y/%m/%d")
    if !ENV['title']
      $stderr.puts "\t[error] Missing title argument.\n\tusage: rake create:article title='article title'"
      exit 1
    end

    title = ENV['title'].capitalize
    path, filename, full_path = calc_path(title)
    permalink = filename.gsub(/\.md/, '')

    if File.exists?(full_path)
      $stderr.puts "\t[error] Exists #{full_path}"
      exit 1
    end

    template = <<TEMPLATE
---
created_at: #{@ymd}
kind: article
publish: true
tags: [misc]
title: "#{title.titleize}"
permalink: #{permalink}
---

TODO: Add content to `#{full_path}.`
TEMPLATE

    FileUtils.mkdir_p(path) if !File.exists?(path)
    File.open(full_path, 'w') { |f| f.write(template) }
    $stdout.puts "\t[ok] Edit #{full_path}"
    pasted = `echo #{full_path} | pbcopy` # Put the path on the clipboard
  end
  
  desc "Pulls in public links from Pinboard.in"
  task :links do
    
    # Public feed URL on Pinboard.in from config.yam
    url = "http://feeds.pinboard.in/rss/u:bsag/"
    
    # Read in data from feed
    data = open(url).read
    
    # Write temp file with data
    FileUtils.mkdir_p('tmp') 
    File.open("tmp/pinboard-bsag.xml", 'w') { |io| io.write(data) }   
    
    # Parse data
    filename = "tmp/pinboard-bsag.xml"
    if !File.file?(filename)
      raise RuntimeError, "No bookmarks available (#{filename} does not exist)"
    end
    data = File.read(filename)
    raw_items = SimpleRSS.parse(data)

    # Convert to items
    raw_items.entries.each do |raw_item|
        
      # Set some variables for the identifier
      year = raw_item.dc_date.strftime("%Y")
      stamp = raw_item.dc_date.strftime("%Y/%m/%d")
      tags = raw_item.dc_subject.gsub(/\s/, ", ")
      s = raw_item.title.gsub(/[^a-zA-Z0-9]/, '-').downcase.gsub(/(\-\-)*/, '')
      slug = s.slice(0..25).gsub(/\-$/, '')
      
      full_path = "content/links/#{year}/#{slug}.md"
      path = "content/links/#{year}/"

      if File.exists?(full_path)
        $stderr.puts "\t[error] Exists #{full_path}"
        exit 1
      end
        
      template = <<TEMPLATE
---
created_at: #{stamp}
kind: bookmark
publish: true
pin_tags: [#{tags}]
title: "#{raw_item.title}"
link: #{raw_item.link}
permalink: #{slug}
---

#{raw_item.description}
TEMPLATE

      FileUtils.mkdir_p(path) if !File.exists?(path)
      File.open(full_path, 'w') { |f| f.write(template) }
      $stdout.puts "\t[ok] Wrote #{full_path}"
        
    end
  end

  def calc_path(title)
    year = Time.now.year
    path = "content/archives/#{year}/"
    filename = title.parameterize('-') + ".md"
    [path, filename, path + filename]
  end
  
end

