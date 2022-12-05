class Member < ApplicationRecord
    belongs_to :executive
    belongs_to :patron
end
