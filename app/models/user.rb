class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :podcasts, through: :favorites

end
