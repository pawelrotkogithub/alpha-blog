class DestroyArticlesCategoryTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :articles_categories
  end
end
