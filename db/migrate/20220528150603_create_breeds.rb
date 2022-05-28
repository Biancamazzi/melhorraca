class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.text :description
      t.string :name
      t.string :photo_url

      t.timestamps
    end
  end
end
