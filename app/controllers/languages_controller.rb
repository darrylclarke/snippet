class LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :edit, :update, :destroy]

  # GET /languages
  # GET /languages.json
  def index
    @languages = Language.all.order(:name)
  end

  # GET /languages/1
  # GET /languages/1.json
  def show
  end

  # GET /languages/new
  def new
    @language = Language.new
  end

  # GET /languages/1/edit
  def edit
  end

  # POST /languages
  # POST /languages.json
  def create
    # byebug
    @language = Language.new(language_params)
    if @language.save
      redirect_to languages_path, message: "Language Created"
    else
      render :new
    end
  end

  # PATCH/PUT /languages/1
  # PATCH/PUT /languages/1.json
  def update
    if @language.update(language_params)
      redirect_to languages_path, message: "Language updated."
    else
      render :edit
    end
  end

  # DELETE /languages/1
  # DELETE /languages/1.json
  def destroy
    @language.destroy
    redirect_to languages_path, message: "Language deleted."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language
      @language = Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_params
      params.require(:language).permit(:name)
    end
end
