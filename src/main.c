#include <stdint.h>
#include <stdio.h>
#include "average.h"

int main()
{
    float arr[] = {-1.0f, 0.0f, 1.0f, 2.0f, 3.0f};
    uint8_t size = 5;
    float avg = average(arr, size);
    printf("Average: %f\n", avg);

    return 0;
}