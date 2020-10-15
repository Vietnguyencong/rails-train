class Link < ApplicationRecord
  belongs_to :report
  validates :status, inclusion: { in: [ 'investigating', 'updated']}
  STATUS_OPTIONS = [
    ['Investigating', 'investigating'],
    ['Updated', 'updated']
  ]
end
