class BooksController < ApiController

  def index
    books = Book.all
    render json: books
  end

  def show
    book = Book.find_by(title: books_params[:title])
    render json: book
  end

  def update
    book = Book.find_by(title: books_params[:title])
    book.update(rating: books_params[:rating])
    render json: book
  end

  def create
    Book.new(books_params)
  end

  private

    def books_params
      params.require(:books).permit(:title,:description,:rating)
    end

end
