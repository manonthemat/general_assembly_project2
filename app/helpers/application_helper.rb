module ApplicationHelper
	
	def randomized_background_image
  	images = ["shoes1.jpg"]
  	images[rand(images.size)]
	end

	def full_title(page_title)
		base_title = "General Assembly Project 2"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
