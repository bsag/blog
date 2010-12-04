include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Breadcrumbs
include Nanoc3::Helpers::Capturing
include Nanoc3::Helpers::Filtering
include Nanoc3::Helpers::HTMLEscape
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Text
include Nanoc3::Helpers::XMLSitemap
require 'builder'
require 'fileutils'
require 'time' 

# Just select articles published this year
def current_articles
  current_year = Time.now.year.to_s
  @items.select { |item| item[:kind] == 'article' and item.identifier =~ %r{^/archives/#{current_year}/.+$} }
end

# Sort articles published this year in reverse chronological order
def current_sorted_articles
  articles.sort_by do |a|
    time = a[:created_at]
    time.is_a?(String) ? Time.parse(time) : time
  end.reverse
end

# Hyphens are converted to sub-directories in the output folder.
#
# If a file has two extensions like Rails naming conventions, then the first extension
# is used as part of the output file.
#
#   sitemap.xml.erb # => sitemap.xml
#
# If the output file does not end with an .html extension, item[:layout] is set to 'none'
# bypassing the use of layouts.
# 
def route_path(item)
  # in-memory items have not file
  return item.identifier + "index.html" if item[:content_filename].nil?
  
  # remove 'content' part of url
  url = item[:content_filename].gsub(/^content/, '')
 
  # select correct url depending on item content_filename
  if url.match(/\/archives\/[\d]{4}\/.*\.md$/) && item[:permalink] # in the archives/year directories
    url = "/archives/" + item[:permalink] + "/index.html"
  else
    url = item.identifier + "index.html" # not in archives, or is /archives.haml
  end

  url
end

# Over-riding built in linking methods to account for 
# altered path of /archives/ items

def link_to(text, target, attributes={})
  # Find path
  if target.is_a?(String)
    path = target
  else
    path = route_path(target)
    path.gsub!(/index\.html$/, '')
    raise RuntimeError, "Cannot create a link to #{target.inspect} because this target is not outputted (its routing rule returns nil)" if path.nil?
  end

  # Join attributes
  attributes = attributes.inject('') do |memo, (key, value)|
    memo + key.to_s + '="' + h(value) + '" '
  end

  # Create link
  "<a #{attributes}href=\"#{h path}\">#{text}</a>"
end

def link_to_unless_current(text, target, attributes={})
  # Find path
  path = target.is_a?(String) ? target : target.path

  if @item_rep && @item_rep.path == path
    # Create message
    "<span class=\"active\" title=\"You're here.\">#{text}</span>"
  else
    link_to(text, target, attributes)
  end
end

# Create a disqus thread link for the item
def disqus_link(item)
  path = route_path(item)
  path.gsub!(/index\.html$/, '#disqus_thread')
  link = "<a href=\"#{path}\">View comments</a>"
  return link
end
   
# Get an array with years containing archived articles
def archive_years(start_year)
  start_year = start_year
  curr_year = Time.now.year
  
  years = (start_year..curr_year).to_a.reverse
end

def get_excerpt(item, length)
  stripped = strip_html(item.compiled_content)
  return excerpt = excerptize(stripped, :length => length)
end

# Returns a sorted list of articles for the given year
def articles_for_year(year, kind)
  @items.select { |item| item[:kind] == kind && Time.parse(item[:created_at]).year == year }.sort_by { |item| Time.parse(item[:created_at]) }.reverse
end

# Copy static assets outside of content instead of having nanoc3 process them.
def copy_static
  FileUtils.cp_r 'static/.', 'output/' 
end

def partial(identifier_or_item)
  item = !item.is_a?(Nanoc3::Item) ? identifier_or_item : item_by_identifier(identifier_or_item)
  item.compiled_content(:snapshot => :pre) 
end

def item_by_identifier(identifier)
  items ||= @items
  items.find { |item| item.identifier == identifier }
end

def is_front_page?
    @item.identifier == '/'
end

def n_newer_articles(n, reference_item)
  @current_sorted_articles ||= current_sorted_articles
  index = @current_sorted_articles.index(reference_item)
  
  # n = 3, index = 4
  if index >= n
    @current_sorted_articles[index - n, n]
  elsif index == 0
    []
  else # index < n
    @current_sorted_articles[0, index]
  end
end


def n_older_articles(n, reference_item)
  @current_sorted_articles ||= current_sorted_articles
  index = @current_sorted_articles.index(reference_item)
  
  # n = 3, index = 4, length = 6
  length = @current_sorted_articles.length
  if index < length
    @current_sorted_articles[index + 1, n]
  else
    []
  end
end

def pinboard_links
  curr_year = Time.now.year
  max = pinboard_links_total
  links = items.select { |i| i.identifier =~ %r{^/links/#{curr_year}/.+$} }.sort_by {|a| a[:created_at] }.reverse
  sorted_links = links.take(max)
  return sorted_links
end

def site_name
  @config[:site_name]
end

def pinboard_url
  @config[:pinboard_url].to_i
end

def pinboard_links_total
  @config[:pinboard_links_total]
end

def pretty_time(time)
  Time.parse(time).strftime("%d %b %Y") if !time.nil?
end

def featured_count
  @config[:featured_count].to_i
end

def excerpt_count
  @config[:excerpt_count].to_i
end

def disqus_shortname 
  @config[:disqus_shortname]
end

def to_month_s(month)
  Date.new(2010, month).strftime("%B")
end
