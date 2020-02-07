class User < ApplicationRecord
    validates :name, :email, :password, presence: true 
    validates :email, uniqueness: true 

    def self.search(search_term)
        if search_term 
            User.select {|user| user.name.downcase == search_term.downcase}
        else 
            return self.all
        end
    end
end
