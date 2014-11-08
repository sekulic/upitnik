class CreateOdgovori < ActiveRecord::Migration
  def change
    create_table :odgovori do |t|
      t.references :pitanje, index: true
      t.string :sadrzaj

      t.timestamps
    end
  end
end
