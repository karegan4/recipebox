class User < ActiveRecord::Base
    has_many :favorites
    has_many :recipes, through: :favorites

    has_secure_password
end