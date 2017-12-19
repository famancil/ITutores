class CreateTutorados < ActiveRecord::Migration[5.1]
  def change
    create_table :tutorados do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :rol
      t.string :bloqueLibre
      t.string :emailPersonal
      t.string :numero
      t.string :carrera
      t.string :campus
      t.string :semestre

      t.timestamps
    end
  end
end
