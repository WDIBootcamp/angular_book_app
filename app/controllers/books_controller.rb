class BooksController < ApplicationController

  def index
    # respond to the type of request
    respond_to do |f|
        f.html  {render :layout => false }
        f.json  {render :json => Book.all}
    end
  end

  def show
    respond_to do |f|
        f.html  {render :layout => false }
        f.json  {render :json => Book.find(params[:id])}
    end
  end

  def create
    new_book = params.require(:book).permit(:title, :author, :description)
    book = Book.create(new_book)

    respond_to do |f|
        f.html {redirect_to books_path}
        f.json {render json: book }
    end
  end

end
