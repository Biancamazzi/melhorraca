class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :quiz, null: false, foreign_key: true
      t.references :info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
