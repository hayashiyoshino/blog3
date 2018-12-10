class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to action: :index
  end

  def edit
  end

  def update
  end

  def show
  end

private

def blog_params
  params.require(:blog).permit(:title, :text)
end

end
