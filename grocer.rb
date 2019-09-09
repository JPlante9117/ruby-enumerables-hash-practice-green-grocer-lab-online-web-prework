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
  consolidate_cart(cart).each do ||
    
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
