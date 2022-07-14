class Category < ApplicationRecord
    scope :sorted ,lambda{order("position ASC")}

end
