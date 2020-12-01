class ShoppingItemsController < ApplicationController
  def index
    pageNumberParam = params[:pageNumber] || '1'
    @pageNumber = pageNumberParam.to_i
    @shoppingItems = ShoppingItem
      .limit(10)
      .offset((@pageNumber - 1) * 10)
    @shoppingItemsCount = ShoppingItem.count
  end

  def rate
    review = Review.find_by(shopping_item_id: params[:shopping_item_id], user_id: current_user.id)
    if (!review)
      review = Review.new({
        user_id: current_user.id,
        shopping_item_id: params[:shopping_item_id].to_i,
        rating: params[:rate].to_i
      })
      result = review.save!
    else
      review.rating = params[:rate].to_i  
      review.save
    end
    redirect_to "/?pageNumber=#{params[:pageNumber] || '1'}"
  end
end
