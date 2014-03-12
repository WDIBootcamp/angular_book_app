class BooksController < ApplicationController

  def index
    # since the only thing that is going to get loaded is the site's index
    # and grab html from the backend, we don't want to render this layout
    render layout: false
  end

end
