# frozen_string_literal: true

# ArticlesController is responsible for handling requests for the Article model.
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
end
