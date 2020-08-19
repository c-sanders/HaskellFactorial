{-- ================================================================================================
 -- Module name : Factorial
 -- ------------------------------------------------------------------------------------------------
 --
 -- Filename : src/Factorial.hs
 --
 -- ------------------------------------------------------------------------------------------------
 --
 -- This file implements a Haskell module which is called;
 --
 --   Factorial
 --
 -- The GHC (Glasgow Haskell Compiler) can be used to compile this file with a command which is
 -- similar to the following;
 --
 --   > ghc -i ./src/testFactorial.hs
 --
 -- Note that this command uses the -i option to specify the name of the file which is to be
 -- compiled.
 --
 -- ================================================================================================
 --}

module
Factorial
(
 -- Functions that should be exported from this module.
 factorial
)
where

import Data.Maybe


{--
 -- Function : factorial
 --
 -- This function is comprised of;
 --
 --   - one declaration, and
 --
 --   - three implementations.
 --
 -- Note that the three implementations all make use of pattern matching. This is done so that any
 -- resulting binary code can decide which implementation should be invoked for a particular
 -- application of the function.
 --}

-- Function declaration

factorial :: Integer -> Maybe Integer

-- Function implementation 1
--
-- Invoke this implementation from within ghci as;
--
--   > factorial (-1)

factorial (-1) = Just 0

-- Function implementation 2

factorial 0    = Just 1

-- Function implementation 3
--
-- 0 is the default value for fromMaybe in case the second arg is Nothing.

factorial x    = Just (x * fromMaybe 0 (factorial (x - 1)))


factorial_new :: Integer -> Maybe Integer
factorial_new    x

    | (x <  0)  = Nothing

    | (x == 0)  = Just 1

    | otherwise = Just (x * x_next)
 
        where

            x_next_maybe = factorial_new (x - 1)

            -- Get the value from the Maybe x_next_maybe.
            --
            -- 0 is the default value for the fromMaybe function. It will be used in the case where
            -- the function's second argument is equal to Nothing.

            x_next = fromMaybe 0 x_next_maybe


displayFactorial :: Integer -> IO ()
displayFactorial 0 = 

    putStrLn("You chose zero!!!")

displayFactorial 1 = do

    putStrLn("Number = " ++ "1")
    putStrLn("You chose one!!!")

displayFactorial x = do

    putStrLn("Number = " ++ show x)
    putStrLn("You DIDN't chose zero or one!!!")

