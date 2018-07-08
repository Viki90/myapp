class CreateDonats < ActiveRecord::Migration[5.2]
  def change
    create_table :donats do |t|
      t.string :name
      t.text :description
      t.string :picture_url

      t.timestamps
    end
  end
end
