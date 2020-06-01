class Solution < ApplicationRecord
    validates :answer, presence: true
    belongs_to :question
end
