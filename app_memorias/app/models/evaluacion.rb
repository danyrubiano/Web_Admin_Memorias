class Evaluacion < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :alumno
  validates_inclusion_of :nota, :in => 1..7 , message: "La nota debe ir entre 1.0 y 7.0"
end
