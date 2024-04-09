#include <stdio.h>
#include "headerFile.h"

int main() {
    int matrixA[2][2] = {{1, 2}, {3, 4}};
    int matrixB[2][2] = {{5, 6}, {7, 8}};
    int result[2][2];

    printf("Matrix A:\n");
    printMatrix(matrixA);

    printf("Matrix B:\n");
    printMatrix(matrixB);

    addMatrices(matrixA, matrixB, result);
    printf("\nSum of A and B:\n");
    printMatrix(result);

    multiplyMatrices(matrixA, matrixB, result);
    printf("\nProduct of A and B:\n");
    printMatrix(result);

    return 0;
}

