class Item < ApplicationRecord
  belongs_to :periodicity
  belongs_to :category
end
