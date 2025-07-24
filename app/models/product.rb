# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  def self.ransackable_attributes(auth_object = nil)
    ["name", "description", "price", "quantity"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
