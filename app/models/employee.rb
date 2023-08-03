class Employee < ApplicationRecord
    SEX_TYPES = ['MALE', 'FEMALE', 'OTHER']

    belongs_to :position
    has_many :leaves
    has_many :comments, as: :commentable
    has_and_belongs_to_many :projects

    validates :name, :gender, :address,:position_id, presence: true
    validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@gmail\.com\z/i}

    def my_date
        Date.today - 10.years
    end
end
