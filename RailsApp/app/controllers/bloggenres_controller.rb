class BloggenresController < ApplicationController
  def index
  end

  def add
  end

  def edit
  end

  private

  def bloggenre_params
    params.require(:bloggenre).permit(:name, :memo)
  end

end
