class Tutorado < ApplicationRecord
	has_many :entrevistas
	has_many :tutorado_actividads
	has_many :tutor_tutorado_semestres 
end
