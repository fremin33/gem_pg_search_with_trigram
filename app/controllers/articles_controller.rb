class ArticlesController < ApplicationController
   def index
     if params[:search].blank?
       @articles = Article.all
     else
       @articles = Article.search_by_title(params[:search])
     end
   end
end
