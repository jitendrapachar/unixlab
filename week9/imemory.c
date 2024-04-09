//Accessing Invalid Memory Address

#include <stdio.h>

int main() {
    int *ptr = (int *)100; // Assigning an arbitrary address
    printf("%d", *ptr); // Accessing invalid memory address
    return 0;
}

