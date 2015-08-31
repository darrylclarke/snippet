class CodeSnippetsController < ApplicationController
  before_action :set_code_snippet, only: [:show, :edit, :update, :destroy]

  # GET /code_snippets
  # GET /code_snippets.json
  def index
    @code_snippets = CodeSnippet.all
  end

  # GET /code_snippets/1
  # GET /code_snippets/1.json
  def show
  end

  # GET /code_snippets/new
  def new
    @code_snippet = CodeSnippet.new
  end

  # GET /code_snippets/1/edit
  def edit
  end

  # POST /code_snippets
  # POST /code_snippets.json
  def create
    @code_snippet = CodeSnippet.new(code_snippet_params)
    if @code_snippet.save
      redirect_to code_snippets_path, message: "Snippet Created"
    else
      render :new
    end
  end

  # PATCH/PUT /code_snippets/1
  # PATCH/PUT /code_snippets/1.json
  def update
    if @code_snippet.update(code_snippet_params)
      redirect_to code_snippets_path, message: "Snippet Updated"
    else
      render :edit
    end
  end

  # DELETE /code_snippets/1
  # DELETE /code_snippets/1.json
  def destroy
    @code_snippet.destroy
    redirect_to code_snippets_path, message: "Snippet deleted."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_snippet
      @code_snippet = CodeSnippet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_snippet_params
      params.require(:code_snippet).permit(:language_id, :title, :work)
    end
end
