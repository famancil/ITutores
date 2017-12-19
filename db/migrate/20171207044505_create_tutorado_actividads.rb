class CreateTutoradoActividads < ActiveRecord::Migration[5.1]
  def change
    create_table :tutorado_actividads do |t|
      t.boolean :asistencia
      t.belongs_to :tutorado, index: true
      t.belongs_to :actividad, index: true

      t.timestamps
    end
  end
end
