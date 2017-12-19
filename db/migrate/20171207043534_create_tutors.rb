class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :numero
      t.string :contraseña
      t.string :carrera
      t.string :campus

      t.timestamps
    end
  end
end
