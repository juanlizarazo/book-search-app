class AddRecentSearches < ActiveRecord::Migration
  def up
    create_table :recent_searches do |t|
      t.string :isbn
      t.string :book_name
      t.string :thumbnail_url
      t.string :author

      t.timestamps null: false
    end
  end

  def down
    drop_table :recent_searches
  end
end
