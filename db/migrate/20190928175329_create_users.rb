class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :coin_count, default: 0
      t.integer :death_count, default: 0
      t.json :kill_count
    end
  end
end
