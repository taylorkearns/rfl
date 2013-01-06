class CreateAttorneysPracticeAreas < ActiveRecord::Migration
  def change
    create_table :attorneys_practice_areas do |t|

      t.timestamps
    end
  end
end
