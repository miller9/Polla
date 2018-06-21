class CreatePollaMundialista < ActiveRecord::Migration[5.2]
  def change
    create_table :polla_mundialista do |t|
      t.string :nombre
      t.text :partido
      t.text :local
      t.text :visitante

      t.timestamps
    end
  end
end
