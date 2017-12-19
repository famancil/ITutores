class CreateActividadCoordinadors < ActiveRecord::Migration[5.1]
  def change
    create_table :actividad_coordinadors do |t|
      t.string :titulo
      t.text :descripcion
      t.string :carrera
      t.string :campus
      t.belongs_to :coordinador, index: true

      t.timestamps
    end
  end
end
