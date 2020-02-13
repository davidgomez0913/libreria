class BooksController < ApplicationController
    
    def index
        @books=Book.all
        book = Book.search(params[:search])
    end
    
    def show
        @book=Book.find(params[:id])
    end
    
    def new
        @book=Book.new()
    end
    
    def create
        book = Book.create(book_params)
        redirect_to book
    end
    
    def edit
        @book=Book.find(params[:id])
    end
    
    def update
        book = Book.find(params["id"])
        book.update(book_params)
        redirect_to book
    end
    
    def destroy
        Book.find(params["id"]).destroy
        redirect_to "/books"
    end
    
    private
    
    def book_params
        params.require(:book).permit(:name_book, :author, :date_published, :gender, :link_download, :image)
    end
    
end
