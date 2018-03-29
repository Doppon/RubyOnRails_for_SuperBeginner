class BlogpostsController < ApplicationController
  def index
    @data = Blogpost.all.order('created_at desc')
  end

  def add
  end

  def edit
  end

  def delete
  end

  private

  def blogposts_params
    params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id)
  end

end
