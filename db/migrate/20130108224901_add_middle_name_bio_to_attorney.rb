class AddMiddleNameBioToAttorney < ActiveRecord::Migration
  def change
    add_column :attorneys, :middle_name, :string
    add_column :attorneys, :bio, :text
  end
end
