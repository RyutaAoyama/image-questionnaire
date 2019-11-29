class Vote < ApplicationRecord
  validates :enquet_id, {presence: true}
end
