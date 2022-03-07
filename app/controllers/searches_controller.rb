class SearchesController < ApplicationController
  
  def search
    @range = params[:range]
    if @range == User
      @user = User.looks(params[:search], params[:word])
    else  
      @book = Book.look(params[:search], params[:word])
    end  
  end
end
