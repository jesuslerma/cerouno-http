require 'sinatra'
require 'find'

file_paths = []
Find.find('songs') do |path|
	file_paths.push(path)
end

get "/songs/:song_name" do
	file_name = file_paths.find {|file| file == "songs/#{params[:song_name]}.txt"}
	
  file = File.open(file_name, "r")
	lyrics = file.read
  lyrics = lyrics.gsub("\n", '<br>')
	file.close

  file_name = "../client/song-template.html"
  file = File.open(file_name, "r")
  html = file.read
  
  html =  html % { :song_name => "every you, every me", :lyrics => lyrics }
  file.close

	html
end

