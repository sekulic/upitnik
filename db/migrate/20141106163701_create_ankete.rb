class CreateAnkete < ActiveRecord::Migration
  def change
    create_table :ankete do |t|
      t.string :naslov
      t.text :opis

      t.timestamps
    end
  end
end
