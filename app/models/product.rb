class Product < ActiveRecord::Base
  include I18n::Alchemy

  validates_presence_of :name, :price, :quantity, :released_at, :last_purchase_at,
    :last_sale_at
  validates_numericality_of :price, :allow_blank => true
  validates_numericality_of :quantity, :only_integer => true, :allow_blank => true

  attr_accessible :name, :price, :quantity, :released_at, :last_purchase_at,
    :last_sale_at
end
