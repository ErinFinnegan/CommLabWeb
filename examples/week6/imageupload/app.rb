require 'sinatra'

get "/" do
  erb :form
end

post '/save_image' do
  
  @filename = params[:file][:filename]
  file = params[:file][:tempfile]

  File.open("./public/images/#{@filename}", 'wb') do |f|
    f.write(file.read)
  end
 
 #image = Image.new
 #image.link = @filename
 #image.save
 
 #@full_path = "http://itp.nyu.edu...../public/images/" + image.link
 
  erb :show_image
end