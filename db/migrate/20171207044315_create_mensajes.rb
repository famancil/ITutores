class CreateMensajes < ActiveRecord::Migration[5.1]
  def change
    create_table :mensajes do |t|
      t.string :titulo
      t.text :texto
      t.string :carrera
      t.string :campus
      t.string :imageDIR
      t.boolean :allCarrer, default: false
      t.belongs_to :coordinador, index: true

      t.timestamps
    end
  end
end
