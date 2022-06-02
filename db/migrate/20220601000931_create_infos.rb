class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.string :dog_description
      t.string :dog_name
      t.string :photo_url
      t.string :kennel_name
      t.string :kennel_owner
      t.float :grooming_frequency_value
      t.float :shedding_value
      t.float :energy_level_value
      t.float :trainability_value
      t.float :demeanor_value
      t.string :size

      t.timestamps
    end
  end
end
