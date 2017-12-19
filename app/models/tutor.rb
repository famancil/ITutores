class Tutor < ApplicationRecord
	has_many :actividads
	has_many :tutor_tutorado_semestres
	#has_many :tutorados, :through => :tutor_tutorado_semestres
	has_many :entrevistas
end
