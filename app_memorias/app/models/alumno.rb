class Alumno < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:rut]

  has_many :memorists, dependent: :destroy
  has_many :mems, through: :memorists, dependent: :destroy
  has_many :evaluacions, dependent: :destroy
  validates :rut, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end

#class Alumno::ParameterSanitizer < Devise::ParameterSanitizer
#  def initialize(*)
#    super
#    permit(:sign_up, keys: [:rut_alumno, :nombre_alumno, :direccion_alumno, :telefono1_alumno, :telefono2_alumno, :anio_egreso])
#  end
#end