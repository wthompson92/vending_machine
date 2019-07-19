class Machine < ApplicationRecord
  validates_presence_of :location
  belongs_to :owner
  has_many :snacks_machines
  has_many :snacks, through: :snacks_machines

  def average_price
    self.snacks.average(:price)
  end
end
