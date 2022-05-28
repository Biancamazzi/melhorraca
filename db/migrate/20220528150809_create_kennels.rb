class CreateKennels < ActiveRecord::Migration[6.1]
  def change
    create_table :kennels do |t|
      t.string :name
      t.string :url
      t.references :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
