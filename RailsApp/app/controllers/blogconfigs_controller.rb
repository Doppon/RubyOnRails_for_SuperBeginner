class BlogconfigsController < ApplicationController
  def index
  end

  def edit
  end

  private

  def blogconfig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylename)
  end

end
