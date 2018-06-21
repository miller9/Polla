class CreatePollaMundials < ActiveRecord::Migration[5.2]
  def change
    create_table :polla_mundials do |t|
      t.string :nombre
      t.text :colombia
      t.text :japon
      t.text :polonia
      t.text :colombia
      t.string :colombia
      t.string :senegal

      t.timestamps
    end
  end
end
