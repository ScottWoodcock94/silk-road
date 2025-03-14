class CreateCategoryCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :category_categories, id: false do |t|
      t.integer :category_id
      t.integer :parent_category_id
      t.integer :child_category_id
    end
  end
end
