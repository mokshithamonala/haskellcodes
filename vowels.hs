import Data.Char (toLower)

isVowel :: Char -> Bool
isVowel c = toLower c `elem` "aeiou"

countVowels :: String -> Int
countVowels str = length (filter isVowel str)

main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine
    let vowels = countVowels input
    putStrLn ("Number of vowels: " ++ show vowels)