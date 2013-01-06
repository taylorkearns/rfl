class CreateAttorneys < ActiveRecord::Migration
  def change
    create_table :attorneys do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :list_order

      t.timestamps
    end
  end
end
