class SecretController < ApplicationController
    before_action :find_entry ,:only => [ :show, :edit, :update, :destroy]
    before_action :verify

    def verify
        if session[:id].to_s == "3wwfalrnferhfilernvldkscmkscewclmlkemc"
            
        else
            redirect_to user_index_path
        end 
    end
    def find_entry
        @board = Board.find(params[:id])
    end
    def index
        @new = Board.where(:new => 1)
        @update = Board.where(:new => 0)
        #@k = Key.where(:user => session[:id]).count
    end
    def show
    end
    def new
        @board = Board.new
    end
    def create
        @board = Board.new(board_params)
        @board.new = params[:new]
        @board.save
        redirect_to secret_path(@board)
    end

    def edit
    end
    def update
        @board.update(board_params)
        @board.save
        redirect_to secret_path(@board)
    end

    def destroy
        @board.destroy
        redirect_to secret_index_path
    end

    private
    def board_params
        params.require(:board).permit(:title,:descrption,:date)
    end
end
