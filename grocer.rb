def consolidate_cart(cart) 
  new_cart = {}                               #creating a new hash
  cart.each do |item|                         #iterating through each item in cart to check inside a nested hash
    item_name = item.keys[0]                  #giving variable item_name the value of item.keys [EXAMPLE.keys[NUM] returns the keys of an                                          element hash!]
    if new_cart[item_name]                    #if statement declaring that if there is an item already present, then increase the count
      new_cart[item_name][:count] += 1 
    else                                      #otherwise, create an instance of that item and then set it's count to 1
      new_cart[item_name] = item[item_name]
      new_cart[item_name][:count] = 1
    end
  end
  new_cart                                    #and finally ask to return the new hash
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    item = coupon[:item]                      #selects the item that the coupon applies to via the hash given
    appliedcoupon = "#{item} W/COUPON"
    if cart[item] && coupon[:item][:count] >= coupon[:num] && !cart[appliedcoupon]
                                              
                                              #If your cart has an item and the coupon has the same item and it's count is >= the number of coupons, and there not a cart[item w/ coupon] in existence . . . 
                                              
      cart[appliedcoupon] = {price: coupon[:cost] / coupon[:num], clearance: cart[item][:clearance], count: coupon[:num]}
      cart[item][:count] -= coupon[:num]                                        
                                              #then create the discounted item and it's hash. coupon[:num] gives you the count for the coupons. Therefore, you can decrease the non-discounted items by the number of coupons and create a coupon set that IS discounted
      elsif cart[item] && coupon[:item][:count] >= coupon[:num] && cart[appliedcoupon]
                                              #Otherwise, if there IS a cart[item w/ coupon] in existence . . .
      cart[appliedcoupon][:count] += coupon[:num]
      cart[item][:count] -= coupon[:num]
      
    end
    
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
