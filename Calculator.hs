import Text.Read (readMaybe)

-- Function to perform the calculation
calculate :: (Integral a) => a -> a -> String -> Maybe Double
calculate x y op = case op of
    "+" -> Just (fromIntegral x + fromIntegral y)
    "-" -> Just (fromIntegral x - fromIntegral y)
    "*" -> Just (fromIntegral x * fromIntegral y)
    "/" -> if y /= 0 then Just (fromIntegral x / fromIntegral y) else Nothing
    "%" -> Just (fromIntegral (x `mod` y))  -- Modulus operation
    _   -> Nothing

-- Main function to run the calculator
main :: IO ()
main = do
    putStrLn "Simple Command-Line Calculator"
    putStrLn "Enter the first number (integer):"
    input1 <- getLine
    putStrLn "Enter the second number (integer):"
    input2 <- getLine
    putStrLn "Enter the operation (+, -, *, /, %):"
    operation <- getLine

    -- Attempt to read the inputs as numbers
    let maybeX = readMaybe input1 :: Maybe Integer
        maybeY = readMaybe input2 :: Maybe Integer

    case (maybeX, maybeY) of
        (Just x, Just y) -> 
            case calculate x y operation of
                Just result -> putStrLn $ "Result: " ++ show result
                Nothing -> putStrLn "Invalid operation or division by zero."
        _ -> putStrLn "Invalid number input. Please enter valid integers."
