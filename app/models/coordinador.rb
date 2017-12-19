class Coordinador < ApplicationRecord
	has_many :actividad_coordinadors
	has_many :mensajes
end
