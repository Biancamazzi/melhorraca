class AddPhotoUrlToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :photourl, :string
  end
end
