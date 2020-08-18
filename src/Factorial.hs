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

factorial :: Integer -> Integer

-- Function implementation 1

factorial -1  = 0

-- Function implementation 2

factorial 0   = 1

-- Function implementation 3

factorial x   = x * factorial (x - 1)
