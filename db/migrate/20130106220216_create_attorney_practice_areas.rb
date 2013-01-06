class CreateAttorneyPracticeAreas < ActiveRecord::Migration
  def change
    create_table :attorneys_practice_areas do |t|
      t.integer :attorney_id
      t.integer :practice_area_id

      t.timestamps
    end
  end
end
