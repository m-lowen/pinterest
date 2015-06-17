class ItemsController < ApplicationController

  before_action :load_items, :only => [:index, :create]
  before_action :load_new_item, :only => [:index, :new]

  def index
  end

  def new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to '/items'
    else
      render :index
    end
  end

  private

    def item_params
      params["item"].permit(:body).merge(:user => current_user)
    end

    def load_new_item
      @item = Item.new
    end

    def load_items
      @items = Item.all
    end

end
