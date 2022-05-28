class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :email
      t.boolean :answer
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
