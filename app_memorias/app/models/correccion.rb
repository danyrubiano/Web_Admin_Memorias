class Correccion < ActiveRecord::Base
  belongs_to :tipo_correccion
  belongs_to :teacher
  belongs_to :mem

  has_attached_file :cover
  #validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :cover, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/zip', 'application/x-zip', 'application/x-zip-compressed']
end
