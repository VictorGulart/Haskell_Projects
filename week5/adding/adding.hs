plusOne x = x + 1

adding x 0 = x
adding x y = 
    adding (plusOne x) (y-1)

main = 
    print (adding 4 4)