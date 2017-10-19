class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :image_file_name
      t.text :summary
      t.text :review
      t.string :in_advance
      t.boolean :kid_friendly
      t.string :genre
      t.string :status

      t.timestamps
    end
  end
end
