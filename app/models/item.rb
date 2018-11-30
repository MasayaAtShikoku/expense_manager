class Item < ApplicationRecord
  belongs_to :periodicity
  belongs_to :category

  def self.grand_annual_total_amount
    Item.where(periodicity_id: 2).sum(:amount) + Item.where(periodicity_id: 1).sum(:amount) * 12
  end

  def self.grand_monthly_total_amount
    Item.where(periodicity_id: 1).sum(:amount) + Item.where(periodicity_id: 2).sum(:amount) / 12
  end
end
