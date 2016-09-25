class AddAuthorToArticle < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :author, index: true
    add_foreign_key :articles, :users, column: :author_id
  end
end
