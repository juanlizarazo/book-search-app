# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recent_search = {
  isbn: '0747532699',
  book_name: 'Harry Potter 1 and the Philosophers Stone',
  thumbnail_url: 'http://bks0.books.google.com/books/content?id=yZ1APgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api',
  author: 'J. K. Rowling'
}

RecentSearch.create(recent_search)
