class CreatePostImages < ActiveRecord::Migration[8.0]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.text :caption
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
