require 'jekyll'

site = Jekyll::Site.new(Jekyll.configuration)
site.read
site.generate

site.pages.each do |page|
  puts "#{site.config['url']}#{page.url}"
end

site.posts.docs.each do |post|
  puts "#{site.config['url']}#{post.url}"
end
