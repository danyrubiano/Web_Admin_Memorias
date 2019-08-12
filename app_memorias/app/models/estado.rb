class Estado < ActiveRecord::Base
  include AASM

  aasm :column => 'state' do
  end
end
