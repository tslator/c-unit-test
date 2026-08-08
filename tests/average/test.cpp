#include "CppUTest/TestHarness.h"

extern "C" {
    #include "average.h"
}

// Create a test group
TEST_GROUP(average_test_group)
{
    void setup()
    {

    }

    void teardown()
    {

    }
};

TEST(average_test_group, simple_test)
{
    float array[] = {-1.0, 0.0, 1.0, 2.0, 3.0};
    float result = average(array, sizeof(array) / sizeof(array[0]));
    CHECK_EQUAL(1.0, result);
}

TEST(average_test_group, empty_array_test)
{
    float array[1];
    float result = average(array, 0);
    CHECK_EQUAL(0.0, result);
}