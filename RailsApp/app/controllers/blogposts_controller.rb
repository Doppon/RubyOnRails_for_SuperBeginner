class BlogpostsController < ApplicationController
  def index
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
