class Product < ApplicationRecord
	after_validation :default_premium 
  belongs_to :category
  validates :price, presence: true

  def default_premium
  	self.premium = false
  end

  def setlast_premium
  	Product.last.update_attribute(:premium, true)
  end

  

end
