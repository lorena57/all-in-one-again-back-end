class Api::V1::GroceriesController < ApplicationController

  def index
    @groceries = Grocery.all
    render json: @groceries
  end

  def create
    note = Grocery.new(grocery_params) 
      if grocery.save
        render json: grocery, status: :accepted
      else
          render json: {errors: grocery.errors.full_messages}
        end    
    end

  def update
    @grocery.update(grocery_params)
    if @grocery.save
      render json: @grocery, status: :accepted
    else
      render json: { errors: @grocery.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    grocery = Grocery.find(params["id"])
    grocery.destroy
  end

  private

  def grocery_params
    params.permit(:item, :qty, :comments)
  end

end
