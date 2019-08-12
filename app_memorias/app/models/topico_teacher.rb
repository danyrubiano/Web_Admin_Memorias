class TopicoTeacher < ActiveRecord::Base
  belongs_to :topico
  belongs_to :teacher
end
