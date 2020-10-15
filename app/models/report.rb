class Report < ApplicationRecord
  has_many :links
  belongs_to :user
end
