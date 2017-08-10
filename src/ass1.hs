-- Assignment 1 (optional) for COMP30020
-- Jack Kaloger 2017

-- subst takes two values and a list, and replaces every occurence of the first value with the second in the list
subst :: Eq t => t -> t -> [t] -> [t]
subst n1 n2 lst = [if (x == n1) then n2 else x | x <- lst]

-- interleave takes two lists and returns the interleaving of the two arguments
interleave :: [t] -> [t] -> [t]
interleave [] [] = []
-- output consists of the input list repeated as many times as necessary to have the specified length
unroll :: Int -> [a] -> [a]
unroll 0 [] = []
