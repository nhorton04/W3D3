class Visit < ActiveRecord::Migration[5.1]
  def change
    create_table "visits" do |t|
      t.string :user_id
      t.string :short_url

      t.timestamps
    end
  end
end
