class Topico < ActiveRecord::Base
  validates :nombre, presence: true
  has_many :topico_asignados, dependent: :destroy
  has_many :mems, through: :topico_asignados, dependent: :destroy
  #has_many :topico_teachers
  #has_many :teachers, through: :topico_teachers
end
