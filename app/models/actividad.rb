class Actividad < ApplicationRecord
  has_many :tutorado_actividads
  belongs_to :tutor
end
