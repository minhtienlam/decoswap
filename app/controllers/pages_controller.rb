class PagesController < ApplicationController
  def home
    @items = Item.search(params).all
  end
end
