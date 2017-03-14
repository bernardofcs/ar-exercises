class Employee < ActiveRecord::Base
  belongs_to :store, required: true     
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }

  before_create do
    self.password = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
  end

  # after_create do
  #   self.password = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
  #   self.save
  # end

  # before_save do
  #   self.password = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
  # end

end
