require 'open-uri'
require 'nokogiri'

flag_colors = {}

# Loop through pages 1 to 18
(1..18).each do |page_number|
  url = "https://www.flagcolorcodes.com/flags/country/page/#{page_number}"
  html = URI.open(url)
  doc = Nokogiri::HTML(html)

  # Each flag block
  doc.css('figure').each do |figure|
    # Extract country name (normalize to lowercase, underscores)
    country_name = figure.css('h2 a').text.strip.downcase.gsub(/\s+/, "_")
    p figure.css('h2 a').attribute("title").value
    country_name = figure.css('h2 a').attribute("title").value.gsub(" Flag","")

    # Extract HEX codes
    colors = figure.css('.colors span').map do |span|
      "##{span['data-clipboard-text']}"
    end

    # Store in hash
    flag_colors[country_name] = colors
  end
end

# Example output
puts flag_colors["france"]   # => ["#0055A4", "#FFFFFF", "#EF4135"]
puts flag_colors["paraguay_reverse"] # => ["#D52B1E", "#FFFFFF", "#0038A8", "#000000", "#EAC102", "#784421"]

# Save to JSON if needed
require 'json'
File.write("flag_colors.json", JSON.pretty_generate(flag_colors))

