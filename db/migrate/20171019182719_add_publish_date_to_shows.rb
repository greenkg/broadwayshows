class AddPublishDateToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :published_on, :date
  end
end
