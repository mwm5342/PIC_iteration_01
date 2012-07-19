
class ArticlesController < ApplicationController
  def index
		@articles = Article.order("published DESC").page(params[:page]).per(10)
  end
	
	def show
		@article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
	end
end
