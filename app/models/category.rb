class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :descuento, :inclusion => {:in => 0..100}

  def self.capsNames
  	Category.all.each do |c|
  		c.name = c.name.upcase!
  		c.save
  	end
  end

end
