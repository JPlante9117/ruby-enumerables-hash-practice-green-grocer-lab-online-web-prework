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
    
    if cart[item] && coupon[:item][:count] >= coupon[:num] && cart["#{item} W/COUPON"]          #
      cart["#{item} W/COUPON"] = {price: coupon[:cost] / coupon[:num], clearance: cart[item][:clearance], count: coupon[:num]}  #
    
    end
    
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
