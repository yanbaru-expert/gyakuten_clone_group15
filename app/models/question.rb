class Question < ApplicationRecords
  validates :title, presence: true
  validates :detail, presence: true
end
