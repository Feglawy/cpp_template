#include <gtest/gtest.h>
#include "library/test_lib.hpp"

// Define test cases
TEST(AdditionTest, PositiveNumbers)
{
    EXPECT_EQ(add(2, 3), 5);
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
