class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
    
    t.text :name_book
    t.string :author
    t.date :date_published
    t.string :gender
    t.text :link_download
      
    t.timestamps  
    
    end
  end
end
