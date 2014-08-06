class ShoesController < ApplicationController

	# def index
 #  	@shoes = Shoe.all
 #  end

 #  def show
 #  	@shoe = Shoe.find(params[:id])
 #  end

 #  def new
 #    @shoe = Shoe.new
 #  end

 #    # you do not need the at because its not rendered
 #  def create
 #    @shoe = Shoe.new(params.require(:shoe).permit(:title, :model, :colorway, :style_code, :release_year, :description))
 #    if @shoe.save
 #      redirect_to shoes_path
 #    else 
 #      render 'new'
 #    end
 #  end

 #  def edit
 #    @shoe = Shoe.find(params[:id])
 #  end

 #  def update
 #    @shoe = shoe.find(params[:id])
 #    if @shoe.update_attributes(params.require(:shoe).permit(:title, :model, :colorway, :style_code, :release_year, :description))
 #      redirect_to shoes_path
 #    else
 #      render 'edit'
 #    end
 #  end

 #  def destroy
 #    @shoe = Shoe.find(params[:id])
 #    @shoe.destroy
 #    redirect_to users_path
 #  end


  # def index
  #   base_url = "http://www.kicksonfire.com"
  #   list_url = "#{base_url}/rare-kicks/" 
  #   doc = Nokogiri::HTML(open(list_url)) 

  #   x = []

  #   l = doc.css(".entry a").map { |link| link['href'] }
  #   l.each do |url|
  #     if url.start_with?base_url 
  #       x.push(url)
  #     end
  #   end
 
    
  #   x.each do |href| 
  #     html = Nokogiri::HTML(open(href))
       

  #     detail = {}
  #     td = html.css("td")
  #     details = td.collect do |row|
  #       [
  #         [:model, td[1]],
  #         [:colorway, td[3]],
  #         [:stylecode, td[5]],
  #         [:release_year, td[7]],
  #         ].each do |name, item|
  #           detail[name] = item.text
  #         end
  #     end


      
  #     title = html.css("h2").text
  #     model = detail[:model]
  #     colorway = detail[:colorway]
  #     style_code = detail[:stylecode]
  #     release_year = detail[:release_year]
  #     description = html.css("p").text.gsub("Copyright © 2014 · KicksOnFire.com", "") 
  #     params[:shoe] = {:title => title, :model => model, :colorway => colorway, :style_code => style_code, :release_year => release_year, :description => description}
        
  #     @things = [title, model,]

       

      # pic_name = html.css("h2").text
      # pic_name = pic_name.gsub(/\W/,"")[0..200]
        
      
    
    #   src  = html.at('img')['src']
    #   @file = File.open("#{pic_name}.jpg")
      # @grid = Mongo::GridFileSystem.new(@db)
      # @grid.open("#{pic_name}.jpg", "w") do |f|
    #     f.write @file
      # end

      # @return [Mongo::GridIO]
  #   end
  # end
end