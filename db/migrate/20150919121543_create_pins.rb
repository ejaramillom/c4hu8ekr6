class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.references :user, index: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :pins, :users
  end
end
