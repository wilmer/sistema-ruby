class Category < ActiveRecord::Base
	has_many :products, :dependent => :destroy
	
	validates :nombre, :presence => {:message => "no puede estar en blanco"}, 
					   length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}, 
					   uniqueness: {case_sensitive: false, message: "ya está registrado"}
	#Permitir sólo caracteres
	validates_format_of :nombre, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/, :message => "contiene valores numéricos" 
end
