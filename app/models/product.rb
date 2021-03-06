class Product < ApplicationRecord
	after_validation :default_premium 
	scope :premium, -> {where(premium: true)}
	scope :last_n, -> (n) {limit(n).order("id DESC")}
  belongs_to :category
  validates :price, presence: true


  def default_premium
  	self.premium = false
  end

  def setlast_premium
  	Product.last.update_attribute(:premium, true)
  end

  def precio_final
  	descuento = Category.select("descuento").where(id: self.category_id).first.descuento
  	
    if descuento >0 
      preciofinal=self.price*(100 - descuento)/100
    else
      preciofinal=self.price
    end
  end

  

end
