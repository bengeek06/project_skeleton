#include <gtest/gtest.h>

#include <dummy.h>

TEST(dummy, dummy_test1)
{
    EXPECT_EQ(0, 0);
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
