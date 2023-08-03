class Position < ApplicationRecord
    has_many :employees, dependent: :destroy
    has_many :comments, as: :commentable

    validates :name, presence: true, uniqueness: true
end
