class VersesController < ApplicationController
  def index
  	@verses = Verse.all
  end

  def show
    @verse = Verse.find(params[:id])
  end
end
