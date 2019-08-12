class Documentacion < ActiveRecord::Base
  belongs_to :mem
  validates :cover, presence: true


  has_attached_file :cover
  #validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :cover, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/zip', 'application/x-zip', 'application/x-zip-compressed']
end
