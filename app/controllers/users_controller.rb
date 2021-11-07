class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def create
        @Book = Book.new(book_params)
        @Book.user_id = current_user.id
        @Book.save
        redirect_to books_path
    end
    
    def show
        @user = User.find(params[:id])
        @books = @user.books
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end
    
    private

      def user_params
        params.require(:user).permit(:name, :introduction, :profile_image)
      end
    
end
