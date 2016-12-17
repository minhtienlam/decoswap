class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  helper ItemsHelper

  def index
    @items = Item.search(params).all
    @to_swap = params[:to_swap]
    @price_cents = params[:price_cents]
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @booking = Booking.new
    @cart = Cart.new
    @review = Review.new
    @to_swap = params[:to_swap]
    @price_cents = params[:price_cents]
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy

    @item.destroy
    redirect_to items_path
  end

  def filter

  end

  private

    def set_item
      @item = Item.find(params[:id])
      @review = Review.new
    end

    def item_params
      params.require(:item).permit(:name, :category_item, :size, :price, :status, :user_id, :created_at, :updated_at, :photo_cache, :description, :color, :condition, :country_of_origin, :designer, :design_period, :materials, photos: [])
    end
end
