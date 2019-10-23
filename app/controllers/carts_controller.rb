class CartsController < ApplicationController 

    skip_before_action :define_current_user, only: [:myCart, :create, :destroy]

    def myCart
        user = User.find(params[:id])
        cart = Cart.where(user_id: user.id)
        render json: cart
    end

    def create
        user = User.find(params[:id])
        item = AllItem.find(params[:itemId])
        Cart.create(user_id: user.id, item_id: item.id, quantity: 1, item_name: item.item_name, price: item.price, image_url: item.image_url)
    end
    

    def destroy
        user = User.find(params[:id])
        item = AllItem.find(params[:itemId])
        unwantedItem = Cart.where(user_id: user.id, item_id: item.id)
        Cart.destroy(unwantedItem.ids)
    end

    def destroyAll 
        user = User.find(params[:id]) 
        Cart.where(user_id: user.id).destroy_all
    end
end