class TopicoAsignado < ActiveRecord::Base
  belongs_to :mem
  belongs_to :topico
end
