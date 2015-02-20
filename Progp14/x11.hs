import Data.Char (ord)
counter :: String -> Int -> Int -> Int -> Int -> (Int,Int,Int,Int)
counter [] a b c d = (a,b,c,d)
counter (x:xs) a b c d
	|(ord x <= 122 && ord x >= 97) = counter xs (a+1) b c d
	|(ord x <= 90 && ord x >= 65) = counter xs a (b+1) c d
	|(ord x == 95) = counter xs a b (c+1) d
	|otherwise = counter xs a b c (d+1)
getuses :: String -> [String]
getuses s  = [show$ fromIntegral c/fromIntegral len, show$ fromIntegral a/fromIntegral len,show$ fromIntegral b/fromIntegral len, show $fromIntegral d/ fromIntegral len]
	where
	(a,b,c,d) = counter s 0 0 0 0
	len = length s

	
main = do
    x <- getLine
    let y = getuses x
    mapM_ print y

	




