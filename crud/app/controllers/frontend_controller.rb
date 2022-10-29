class FrontendController < ApplicationController
  def index
    @products = Product.all
    @posts = Post.all
    @navs = Nav.all
  end
end
