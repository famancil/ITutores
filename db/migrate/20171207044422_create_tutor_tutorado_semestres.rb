class CreateTutorTutoradoSemestres < ActiveRecord::Migration[5.1]
  def change
    create_table :tutor_tutorado_semestres,id: false do |t|
      t.string :semestre
      t.belongs_to :tutorado, index: true
      t.belongs_to :tutor, index: true

      t.timestamps
    end
  end
end
