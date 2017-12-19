class CreateEntrevista < ActiveRecord::Migration[5.1]
  def change
    create_table :entrevista do |t|
      t.text :comentario
      t.integer :vocacional
      t.integer :academico
      t.integer :interracion
      t.integer :migratorio
      t.integer :salud
      t.integer :familiar
      t.integer :economico
      t.integer :cantidadEntrevista
      t.belongs_to :tutorado, index: true
      t.belongs_to :tutor, index: true
      
      t.timestamps
    end
  end
end
