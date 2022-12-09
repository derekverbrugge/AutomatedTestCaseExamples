--This is a demo of a unit test written in Haskell using HUnit

import Test.HUnit

-- define a test case
test_double :: Test
test_double = TestCase (assertEqual "double of 5 should be 10" (double 5) 10)

-- define the function to be tested
double :: Int -> Int
double x = x * 2

-- define a test suite that contains all the tests
tests :: Test
tests = TestList [TestLabel "test_double" test_double]

-- run the tests
main :: IO Counts
main = runTestTT tests
