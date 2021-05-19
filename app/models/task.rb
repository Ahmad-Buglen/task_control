class Task < ApplicationRecord
    has_many :approvals, dependent: :destroy
end
