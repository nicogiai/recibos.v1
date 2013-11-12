class Cliente < ActiveRecord::Base
  belongs_to :autonomo
  belongs_to :monotributo
  has_and_belongs_to_many :afip_acts
  has_and_belongs_to_many :dgr_acts
  has_many :clientes_por_impuestos
  has_many :impuestos, :through => :clientes_por_impuestos
  has_many :historial_de_impuestos

  #validations
  validates_presence_of :cliente

end
