class BooksController < ApplicationController
  def index
    @books = Constants::LATIN_TITLES
  end

  def show
    abbr = params[:abbreviation]

    @title = Constants::LATIN_TITLES[abbr.to_sym]
    @verses = Verse.where(book_abbreviation: abbr)
  end
end
