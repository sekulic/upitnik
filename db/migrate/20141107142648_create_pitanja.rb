class CreatePitanja < ActiveRecord::Migration
  def change
    create_table :pitanja do |t|
      t.references :anketa, index: true
      t.text :sadrzaj

      t.timestamps
    end
  end
end
