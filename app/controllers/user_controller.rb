class UserController < ApplicationController
    def index
        @new = Board.where(:new => 1)
        @new = @new.where(["date <= ?", Time.now.strftime("%Y-%m-%d")])
        @update = Board.where(:new => 0)
        @update = @update.where(["date <= ?", Time.now.strftime("%Y-%m-%d")])
    end
    def login
        @kk = Key.new
    end
    def verify
        @kk = Key.where(:user => params[:key][:user]).where(:pw => params[:key][:pw])
        if @kk.count == 0
            redirect_to user_index_path
        else
            redirect_to secret_index_path(:hash => "asdas")
        end
    end
    
    
end
