class UserController < ApplicationController
    def index
        @new = Board.where(:new => 1)
        @new = @new.where(["date <= ?", Time.now.strftime("%Y-%m-%d")])
        @update = Board.where(:new => 0)
        @update = @update.where(["date <= ?", Time.now.strftime("%Y-%m-%d")])
    end

end
