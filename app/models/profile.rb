class Profile < ApplicationRecord
    
    belongs_to :user 
    has_many :rates , dependent: :destroy
end
