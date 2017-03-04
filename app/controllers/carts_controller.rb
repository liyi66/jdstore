class CartsController < ApplicationController
   def clean
   current_cart.clean!
   flash[:warning] = "已清空购物车"

      if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
         @cart_item.update(cart_item_params)
        flash[:notice] = "成功变更数量"
      else
        flash[:warning] = "数量不足以加入购物车"
      end

   redirect_to carts_path
 end
end
