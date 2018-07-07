require 'sinatra'
require 'find'

file_paths = []
Find.find('songs') do |path|
	file_paths.push(path)
end

get "/songs/:song_name" do
	file_name = file_paths.find {|file| file == "songs/#{params[:song_name]}.txt"}
	return "Song not found" if file_name.nil?
  
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

post "/songs/:song_name" do
  song_name = params[:song_name]
  lyrics_content = request.body.read

  song_path = "songs/#{song_name}.txt"
  song_file = File.open(song_path, "w")
  song_file.write(lyrics_content)
  song_file.close()

  "titulo:" + song_name + ", letra:" +lyrics_content
  # 
end

post "/songs" do
  song_name = params[:song_name]
  lyrics_content = params[:song_lyrics]

  song_path = "songs/#{song_name}.txt"
  song_file = File.open(song_path, "w")
  song_file.write(lyrics_content)
  song_file.close()
end

get "/" do
  file_name = "../client/form.html"
  file = File.open(file_name, "r")
  html = file.read
  file.close
  html
end