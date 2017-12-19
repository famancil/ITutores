class CreateCoordinadors < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinadors do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :contraseña
      t.string :campus

      t.timestamps
    end
  end
end
