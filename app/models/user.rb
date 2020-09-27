class User < ApplicationRecord
    has_secure_password

    validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}

end
