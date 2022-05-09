class Industry < ApplicationRecord
    has_and_belongs_to_many :sectors

    validates :name, :presence => true, :uniqueness => true 
    validates :email, :uniqueness => true
    validates :registration_number, :uniqueness => true

end
