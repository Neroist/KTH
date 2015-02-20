

occurrences :: String -> Int

occurrences([]) = 0
occurrences(x:xs)
	|(x == 'o') = 1 + occurrences(xs)
	|otherwise 	= occurrences(xs)



canMove :: String -> Bool
canMove s 
	|head s == 'o' && (head $ drop 1 s) == 'o' = True
	|otherwise = False


move1 :: String -> String -> String
move1 s1 s2  = s1 ++ "--o" ++ drop 3 s2

move2 :: String -> String -> String
move2 s1 s2 = init s1 ++ "o--" ++ drop 2 s2

skit:: Int -> String -> String -> Int
skit rec s1 s2 = (if (not (canMove s2)) && (last s1) /= '-' then rec else diff (move1 s1 s2) 0 rec-1)


diff :: String -> Int -> Int -> Int
diff _ 12 rec = rec
--diff s it rec = e where
	
--	b = rec
--	(s1,s2) = splitAt it s
--	a = skit rec s1 s2
--	c = diff s it+1 rec
--	d = min(a,b)
--	e = min(c,d)
	 
--Anropa med it = 0 och ny sträng på dom nya testerna
--Anropa med it = it och s = s för att loopa