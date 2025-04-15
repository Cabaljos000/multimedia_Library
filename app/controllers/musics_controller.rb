class MusicsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  # GET /musics or /musics.json
  def index
    @musics = Music.all
  end

  # GET /musics/1 or /musics/1.json
  def show
    @music = Music.find(params[:id])
  end

  # GET /musics/new
  def new
    @music = Music.new
  end

  # GET /musics/1/edit
  def edit
    @music = Music.find(params[:id])
    render :edit
  end

  # POST /musics or /musics.json
  def create
    @music = current_user.musics.new(music_params)

    respond_to do |format|
      if @music.save
        flash[:notice] = "Saved!"
        format.html { redirect_to @music }
        format.json { render :show, status: :created, location: @music }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musics/1 or /musics/1.json
  def update
    respond_to do |format|
      @music = Music.find(params[:id])
      if @music.update(music_params)
        format.html { redirect_to @music, notice: "Updated!" }
        format.json { render :show, status: :ok, location: @music }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1 or /musics/1.json
  def destroy
    @music = Music.find(params[:id])
    @music.destroy!

    respond_to do |format|
      format.html { redirect_to musics_path, status: :see_other, notice: "Deleted!" }
      format.json { head :no_content }
    end
  end

  def search
    query = params[:query]
    track = SpotifyService.search_track(query)
  
    if track
      release_date = track["album"]["release_date"] 
      year = release_date[0, 4] 

      artist_data = SpotifyService.get_artist(track["artists"].first["id"])
      genre = artist_data["genres"].first || "Unknown"

      render json: {
        title: track["name"],
        artist: track["artists"].map { |a| a["name"] }.join(", "),
        album: track["album"]["name"],
        image_url: track["album"]["images"].first["url"],
        year: year,
        genre: genre
      }
    else
      render json: { error: "No track found" }, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def music_params
      params.require(:music).permit(:title, :artist, :album, :genre, :year, :description, :image_url, :rating)
    end    
end
