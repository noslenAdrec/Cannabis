class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :fechaNacimiento
      t.string :comuna

      t.timestamps null: false
    end
  end
end
