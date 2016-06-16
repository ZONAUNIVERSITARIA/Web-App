class RemoveColumnMarkupBodyToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :markup_body, :text
  end
end
