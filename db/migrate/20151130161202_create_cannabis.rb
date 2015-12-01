class CreateCannabis < ActiveRecord::Migration
  def change
    create_table :cannabis do |t|
      t.string :sativa
      t.string :indica
      t.string :interior
      t.string :exterior
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
