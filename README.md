1.2 git checkout -b development 

7.4 Tomar el último producto, actualizarlo a premium.
$ Product.last.update_attribute(:premium, true)

7.5 Actualizar todas las categorías cambiando sus respectivos nombres a mayúscula (No confundir con el callback visto en clases)

def self.capsNames
	Category.all.each do |c|
		c.name = c.name.upcase!
		c.save
	end
end