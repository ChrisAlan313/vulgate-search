class VersesController < ApplicationController
  def index
  	@verses = Verse.all
  end
end
