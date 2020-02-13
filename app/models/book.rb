class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    
    def self.search(search)
        if search
            @books = Book.find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
            
        else
            Book.all
        end
    end
    
end