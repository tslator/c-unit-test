#include "average.h"

float average(float arr[], uint8_t size)
{
    float sum = 0.0f;
    for (uint8_t i = 0; i < size; i++) 
    {
        sum += arr[i];
    }
    return sum / size;
}