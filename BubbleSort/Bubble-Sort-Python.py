def bubble_sort(vetor):
    n = len(vetor)
    for i in range(n - 1):
        for j in range(n - i - 1):
            if vetor[j] > vetor[j + 1]:
                vetor[j], vetor[j + 1] = vetor[j + 1], vetor[j]

vetor = [64, 34, 25, 12, 22, 11, 90]
bubble_sort(vetor)
print("Vetor ordenado:", vetor)