class MusicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_music, only: [:show, :edit, :update, :destroy]


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
  end

  # POST /musics or /musics.json
  def create
    @music = Music.new(music_params)
    @music.user = current_user

    respond_to do |format|
      if @music.save
        flash[:notice] = "Music was successfully created"
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
        format.html { redirect_to @music, notice: "Music was successfully updated." }
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
      format.html { redirect_to musics_path, status: :see_other, notice: "Music was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def music_params
      params.require(:music).permit(:title, :artist, :album, :genre, :year, :description, :poster)
    end    
end
