class CreateKategorije < ActiveRecord::Migration
  def change
    create_table :kategorije do |t|
      t.string :ime

      t.timestamps
    end
  end
end
