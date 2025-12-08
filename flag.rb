require 'nokogiri'
require 'open-uri'
require 'json'

# Function to scrape one page of flags
def scrape_flags(url)
  doc = Nokogiri::HTML(URI.open(url, :read_timeout => 10))

  flags = []

  doc.css('article').each do |article|
    region = article.css('h2 a').text.strip
    colors = article.css('li a').map(&:text)

    flags << { region: region, colors: colors }
  end

  flags
end

# Loop through pages from 121 down to 1
all_flags = []
(1..121).reverse_each do |page_number|
  next if page_number == 118
  url = "https://encycolorpedia.com/flags?page=#{page_number}"
  puts "Scraping #{url}..."
  all_flags.concat(scrape_flags(url))
rescue => e
  p e.message
end

# Print results
all_flags.each do |flag|
  puts flag.inspect
end

# Optionally save to JSON
File.open("flags.json", "w") do |f|
  f.write(JSON.pretty_generate(all_flags))
end

