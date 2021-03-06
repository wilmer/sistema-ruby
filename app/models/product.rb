class Product < ActiveRecord::Base
	belongs_to :category
  	
  	validates :nombre, :presence => {:message => "no puede estar en blanco"},
  					   length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"},
  					   uniqueness: {case_sensitive: false, message: "ya está registrado"}
  	
  	validates :descripcion, length: {maximum: 80, too_long: "demasiado larga"}
  	
  	validates :stock, :presence => {:message => "no puede estar en blanco"}
  	validates :stock, :numericality => {:message => "debe ser un valor numérico"}
  	validates_numericality_of :stock, :greater_than => 0, :message => "no puede ser negativo o cero",
  									  less_than_or_equal_to:10000, :message => "demasiado grande"
  	
  	validates :precio_compra, :presence => {:message => "no puede estar en blanco"}
  	validates :precio_compra, :numericality => {:message => "debe ser un valor numérico"}
  	validates_numericality_of :precio_compra, :greater_than => 0, :message => "no puede ser negativo o cero",
  											  less_than_or_equal_to:100000000, :message => "demasiado grande"

  	validates :precio_venta, :presence => {:message => "no puede estar en blanco"}
  	validates :precio_venta, :numericality => {:message => "debe ser un valor numérico"}
  	validates_numericality_of :precio_venta, :greater_than => 0, :message => "no puede ser negativo o cero",
  											 less_than_or_equal_to:199000000, :message => "demasiado grande"

  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
