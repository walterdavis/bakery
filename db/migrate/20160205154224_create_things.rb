class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :foo
      t.string :bar

      t.timestamps null: false
    end
  end
end
