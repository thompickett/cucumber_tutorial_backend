class Api::V1::BooksController < Api::ApiController

  def index
    books = Book.all
    render json: books
  end

  def show
    book = Book.find(params[:id])
    render json: book
  end

  def update
    book = Book.find(params[:id])
    book.update(rating: books_params[:rating])
    render json: book
  end

  def create
    Book.new(books_params)
  end

  private

    def books_params
      params.permit(:title, :description, :rating, :author)
    end

end
