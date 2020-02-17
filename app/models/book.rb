class Book < ApplicationRecord

    has_one_attached :image

    def self.search(search,filter)
        if filter == 1 || filter == ["1"]
            busqueda = "name_book"
        elsif filter==["2"]
            busqueda = "author"
        elsif filter==["3"]
            busqueda = "gender"
        end
        where("#{busqueda} like ?", "%#{search}%")
    end
    
end