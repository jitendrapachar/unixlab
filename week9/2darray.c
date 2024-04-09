#include <stdio.h>
#include <stdlib.h>

int main() {
    int rows = 3;
    int cols = 3;

    // Dynamically allocate memory for a 2D array
    int **matrix = (int **)malloc(rows * sizeof(int *));
    if (matrix == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }

    for (int i = 0; i < rows; i++) {
        matrix[i] = (int *)malloc(cols * sizeof(int));
        if (matrix[i] == NULL) {
            printf("Memory allocation failed\n");

            // Free previously allocated memory
            for (int j = 0; j < i; j++) {
                free(matrix[j]);
            }
            free(matrix);
            return 1;
        }
    }

    // Accessing elements out of bounds
    for (int i = 0; i <= rows; i++) {
        for (int j = 0; j <= cols; j++) {
            matrix[i][j] = i + j; // Segmentation fault occurs here
        }
    }

    // Free allocated memory
    for (int i = 0; i < rows; i++) {
        free(matrix[i]);
    }
    free(matrix);

    return 0;
}

