class Category < ApplicationRecord
  has_many :products, dependent: :destroy


  def self.capsNames
  	Category.all.each do |c|
  		c.name = c.name.upcase!
  		c.save
  	end
  end

end
