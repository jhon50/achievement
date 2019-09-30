class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.integer :kind
      t.integer :value
      t.string  :slug
      t.references :user, foreign_key: true
    end
  end
end
