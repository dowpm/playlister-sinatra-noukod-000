class SongsController < ApplicationController

<<<<<<< HEAD
  use Rack::Flash

=======
>>>>>>> c5e4edf1b1ef3e9ed52210d6477154262922fa41
  get '/songs' do
    # binding.pry
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/new' do
    @genres = Genre.all
    erb :"songs/new"
  end

<<<<<<< HEAD
=======
  post '/songs' do
    binding.pry
    song = Song.new name: params[:song][:name]
    artist = Artist.create params[:artist]
  end

>>>>>>> c5e4edf1b1ef3e9ed52210d6477154262922fa41
  get '/songs/:slug' do
    # binding.pry
    @song = Song.find_by_slug params[:slug]
    erb :"songs/show"
  end

<<<<<<< HEAD
  post '/songs' do
    # binding.pry
    song = Song.create params[:song]
    song.artist = Artist.find_or_create_by params[:artist]
    song.save

    flash[:message] = "Successfully created song."

    redirect("/songs/#{song.slug}")
  end

  get '/songs/:slug/edit' do
   @song = Song.find_by_slug params[:slug]
   erb :'songs/edit'
  end

  patch '/songs/:slug' do

    song = Song.find_by_slug(params[:slug])
    song.update(params[:song])
    song.artist = Artist.find_or_create_by params[:artist]
    song.save

    flash[:message] = "Successfully updated song."

    redirect("/songs/#{song.slug}")
  end

=======
>>>>>>> c5e4edf1b1ef3e9ed52210d6477154262922fa41
end
