class Patient < ApplicationRecord::Base
    has_many :physicians, through: :appointments
   
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
