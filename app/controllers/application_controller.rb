class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :scrape
  def scrape
	    base_url = "http://www.kicksonfire.com"
	    list_url = "#{base_url}/rare-kicks/" 
	    doc = Nokogiri::HTML(open(list_url)) 

	    x = []

	    l = doc.css(".entry a").map { |link| link['href'] }
	    l.each do |url|
	      if url.start_with?base_url 
	        x.push(url)
	      end
	    end
	 
	    
	    x.each do |href| 
	      html = Nokogiri::HTML(open(href))
	       

	      detail = {}
	      td = html.css("td")
	      details = td.collect do |row|
	        [
	          [:model, td[1]],
	          [:colorway, td[3]],
	          [:stylecode, td[5]],
	          [:release_year, td[7]],
	          ].each do |name, item|
	            detail[name] = item.text
	          end
	      end
	      title = html.css("h2").text
	      model = detail[:model]
	      colorway = detail[:colorway]
	      style_code = detail[:stylecode]
	      release_year = detail[:release_year]
	      description = html.css("p").text.gsub("Copyright © 2014 · KicksOnFire.com", "") 
	      
	   
	      pic_name = html.css("h2").text
	      pic_name = pic_name.gsub(/\W/,"")[0..200]
	        
	      src  = html.at('img')['src']
	      File.open("#{pic_name}.png", "wb") do |f|
	        f.write(open(src).read)

	      Shoe.create(:title => title, :model => model, :colorway => colorway, :style_code => style_code, :release_year => release_year, :description => description)
	    end
	  end
	end

end
