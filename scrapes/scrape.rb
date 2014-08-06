	# require 'nokogiri'
	# require 'open-uri'
	# require 'mongo'

	# 	base_url = "http://www.kicksonfire.com"
	# 	list_url = "#{base_url}/rare-kicks/" 
	# 	doc = Nokogiri::HTML(open(list_url)) 

	# 	x = []

	# 	l = doc.css(".entry a").map { |link| link['href'] }
	# 	l.each do |url|
	# 		if url.start_with?base_url 
	# 			x.push(url)
	# 		end
	# 	end

	# 	x.each do |href| 
	# 		html = Nokogiri::HTML(open(href))
					
					

	# 		detail = {}
	# 		td = html.css("td")
	# 		details = td.collect do |row|
	# 			[
	# 				[:model, td[1]],
	# 			  [:colorway, td[3]],
	# 			  [:stylecode, td[5]],
	# 			  [:release_year, td[7]],
	# 			  ].each do |name, item|
	# 			    detail[name] = item.text
	# 			  end
	# 		end
	# 		shoe = Shoe.new
	# 		title = html.css("h2").text
	# 		Shoe.title = title 
	# 		model = detail[:model]
	# 		Shoe.modle = model
	# 		colorway = detail[:colorway]
	# 		Shoe.colorway = colorway
	# 		style_code = detail[:stylecode]
	# 		Shoe.style_code = style_code
	# 		release_year = detail[:release_year]
	# 		Shoe.release_year = release_year
	# 		description = html.css("p").text.gsub("Copyright © 2014 · KicksOnFire.com", "") 
	# 		Shoe.description = description
	# 		# pic_name = html.css("h2").text
	# 		# pic_name = pic_name.gsub(/\W/,"")[0..200]
				
			
		
	#   #   src  = html.at('img')['src']
	#   # 	@file = File.open("#{pic_name}.jpg")
	# 		# @grid = Mongo::GridFileSystem.new(@db)
	# 		# @grid.open("#{pic_name}.jpg", "w") do |f|
	#   # 		f.write @file
	# 		# end

	# 		# @return [Mongo::GridIO]
	# 	end
