class TipoCorreccion < ActiveRecord::Base
  
  has_many :correccions, dependent: :destroy
  
end
