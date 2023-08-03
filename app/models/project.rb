class Project < ApplicationRecord
    has_and_belongs_to_many :employees
    has_many :comments, as: :commentable
end
