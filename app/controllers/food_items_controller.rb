class FoodItemsController < ApplicationController
  def index
    @q = FoodItem.ransack(params[:q])
    @food_items = @q.result(:distinct => true).includes(:menu, :bookmarks, :users).page(params[:page]).per(10)

    render("food_items/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @food_item = FoodItem.find(params[:id])

    render("food_items/show.html.erb")
  end

  def new
    @food_item = FoodItem.new

    render("food_items/new.html.erb")
  end

  def create
    @food_item = FoodItem.new

    @food_item.menu_id = params[:menu_id]
    @food_item.price = params[:price]
    @food_item.image = params[:image]

    save_status = @food_item.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/food_items/new", "/create_food_item"
        redirect_to("/food_items")
      else
        redirect_back(:fallback_location => "/", :notice => "Food item created successfully.")
      end
    else
      render("food_items/new.html.erb")
    end
  end

  def edit
    @food_item = FoodItem.find(params[:id])

    render("food_items/edit.html.erb")
  end

  def update
    @food_item = FoodItem.find(params[:id])

    @food_item.menu_id = params[:menu_id]
    @food_item.price = params[:price]
    @food_item.image = params[:image]

    save_status = @food_item.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/food_items/#{@food_item.id}/edit", "/update_food_item"
        redirect_to("/food_items/#{@food_item.id}", :notice => "Food item updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Food item updated successfully.")
      end
    else
      render("food_items/edit.html.erb")
    end
  end

  def destroy
    @food_item = FoodItem.find(params[:id])

    @food_item.destroy

    if URI(request.referer).path == "/food_items/#{@food_item.id}"
      redirect_to("/", :notice => "Food item deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Food item deleted.")
    end
  end
end
