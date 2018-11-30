class Category < ApplicationRecord
  has_many :items

  def total_amount
    items.sum(:amount)
  end

  def annual_total_amount
    items.where(periodicity_id: 2).sum(:amount) + items.where(periodicity_id: 1).sum(:amount) * 12
  end

  def monthly_total_amount
    items.where(periodicity_id: 1).sum(:amount) + items.where(periodicity_id: 2).sum(:amount) / 12
  end
end
