class Games < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :game_description
      t.string :game_image

      t.integer :user_id

    end
  end
end


