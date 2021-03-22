class ArtistsController < ApplicationController
    def index
        @artists = Artist.all 
    end

    def show 
        find_artist 
    end

    def new
        @artist = Artist.new 
    end

    def edit
        find_artist 

    end

    def update
        find_artist
        @artist.update(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist.id)
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to edit_artist_path
        end
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist.id)
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end

    end

    private

        def artist_params
            params.require(:artist).permit(:name, :age, :title)
        end

        def find_artist
            @artist = Artist.find(params[:id])
        end
end
