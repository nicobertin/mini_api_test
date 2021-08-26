class Cause < ApplicationRecord
    belongs_to :organization
    has_many :reports
    has_many :donations
end
