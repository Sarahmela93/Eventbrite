class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @month_array = ["","JAN","FEV", "MAR", "AVR", "MAI", "JUN", "JUL", "AOU", "SEP", "OCT", "NOV", "DEC"]
      end
    
      def is_same_user?
        @user = User.find(params[:id])
        current_user == @user ? nil : (redirect_to root_path)
      end
    
      def edit
        @user = User.find(params[:id])
      end
    
      def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:first_name, :last_name, :description))
          redirect_to user_path(@user.id)
        else
          render :new
        end
    end

         #def destroy
          #  session.delete(:user_id)
           # redirect_to root_path
          #end
    
end


end
