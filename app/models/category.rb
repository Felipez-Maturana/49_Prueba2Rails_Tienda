class Category < ApplicationRecord
  has_many :products

  def self.capsNames
  	Category.all.each do |c|
  		c.name = c.name.upcase!
  		c.save
  	end
  end

end
