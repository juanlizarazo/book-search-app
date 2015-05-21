class SearchController < ApplicationController
  def index
    isbn = params[:isbn]

    # Get book data from google's api
    book = Book.get("volumes?q=isbn:#{isbn}")
    book_data = book.items.first[:volumeInfo]

    # create entry in recent_searches
    recent_search = RecentSearch.create(
      {
         isbn: isbn,
         book_name: book_data[:title],
         author: book_data[:authors].first,
         thumbnail_url: book_data[:imageLinks][:smallThumbnail]
      }
    )

    render json: recent_search, status: :ok
  end
end
