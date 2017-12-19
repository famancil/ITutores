class CreateActividads < ActiveRecord::Migration[5.1]
  def change
    create_table :actividads do |t|
      t.string :titulo
      t.text :descripcion
      t.string :carrera
      t.boolean :todaCarrera
      t.belongs_to :tutor, index: true

      t.timestamps
    end
  end
end
