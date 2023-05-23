class Userprofile < ApplicationRecord
    validates :first_name, :last_name, :gender, :email, :post, presence: true
    validates :email, uniqueness: true
    def name
        "#{first_name} #{last_name}".strip
    end
end
