class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :nickname
      t.integer :shirt_number
      t.integer :status
      t.integer :score_goal, default: 0
      t.integer :position

      t.timestamps
    end
  end
end
