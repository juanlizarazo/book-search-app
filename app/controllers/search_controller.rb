class SearchController < ApplicationController
  def create
    flash[:error] = "isbn \"#{params[:isbn]}\" not found" unless get_book_info(params[:isbn])
    redirect_to root_url
  end

  def show
    render json: get_book_info(params[:isbn]), status: :ok
  end

  private

  def get_book_info(isbn)
    # Get book data from google's api
    book = Book.get("volumes?q=isbn:#{isbn}")

    if book.items?
      book_data = book.items.first[:volumeInfo]

      # create entry in recent_searches and return result
      RecentSearch.create(
        {
          isbn: isbn,
          book_name: book_data[:title],
          author: book_data[:authors].first,
          thumbnail_url: book_data[:imageLinks][:smallThumbnail]
        }
      )
    end
  end
end
