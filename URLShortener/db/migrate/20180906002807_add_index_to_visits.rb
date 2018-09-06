class AddIndexToVisits < ActiveRecord::Migration[5.1]
  def change
    add_index :short_url
    add_index :user_id
  end
end
