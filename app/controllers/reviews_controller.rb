class ReviewsController < ApplicationController
 def create
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params.merge(user: current_user))
    @review.item = @item
    if @review.save
      respond_to do |format|
        format.html { redirect_to item_path(@item) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'items/show' }
        format.js
      end
    end


  end

  def show
  end

  def lastcomments
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end

