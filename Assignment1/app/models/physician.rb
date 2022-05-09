class Physician < ApplicationRecord
    has_many :patients, through: :appointments
    
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :unique_id, uniqueness: true

    # before_create do
    #         token = SecureRandom.hex(10)
    #     break token unless
    #         User.where(access_token:token).exists?
    # end    
end
