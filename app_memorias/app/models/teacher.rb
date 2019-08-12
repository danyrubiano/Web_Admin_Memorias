class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:rut]

  #has_many :topico_teachers
  #has_many :topicos, through: :topico_teachers
  has_many :correccions, dependent: :destroy
  has_many :evaluacions, dependent: :destroy
  has_many :correctors, dependent: :destroy
  has_many :mems, through: :correctors, dependent: :destroy
  validates :rut, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end
