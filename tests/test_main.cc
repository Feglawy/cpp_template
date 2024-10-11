#include <gtest/gtest.h>

// A simple function to test
int add(int a, int b)
{
    return a + b;
}

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
