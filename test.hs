-- deklarasi dan definisi fungsi f
f :: Double -> Double -> Double
f x y = 3 * x + 5 * y + 2


-- deklarasi dan definisi fungsi g
g :: Double -> Double -> Double
g x y = x^2 + y^2


-- deklarasi dan definisi fungsi h
h :: Double -> Double -> Double
h x y = 16 - (x - 3)^2 - (y - 2)^2


main = print(f 5 4, g 5 3, h 5 2)