class CheckoutsController < ApplicationController

  def create
    a = Checkout.new
    a.book_id = params[:book_id].to_i
    a.user_id = current_user.id
    a.returned = false
    cb = Book.find_by_id(params[:book_id])

    cb.currently_out = true
    a.save!
    cb.save!
    redirect_to :back
  end

end
