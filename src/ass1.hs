-- Assignment 1 (optional) for COMP30020
-- Jack Kaloger 2017

-- subst takes two values and a list, and replaces every occurence of the first value with the second in the list
subst :: Eq t => t -> t -> [t] -> [t]
subst n1 n2 lst = [if (x == n1) then n2 else x | x <- lst]

-- interleave takes two lists and returns the interleaving of the two arguments
-- that is, the result is a list in which the first, third, fifth... elements come from the first argument
-- and the second, fourth, sixth... come from the second
-- if either argument is shorter than the other, the excess elements of the longer comprise the end of the resulting list
interleave :: [t] -> [t] -> [t]
interleave [] [] = []
-- unroll takes a list and an integer and constructs a list of the specified length made up by unrolling the input list as many times as needed to construct a list of that length
-- that is, the output consists of the input list repeated as many times as necessary to have the specified length
unroll :: Int -> [a] -> [a]
unroll 0 [] = []
