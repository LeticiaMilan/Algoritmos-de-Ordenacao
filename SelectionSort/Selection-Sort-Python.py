def selection_sort(vetor):
    n = len(vetor)
    for i in range(n - 1):
        min_index = i
        for j in range(i + 1, n):
            if vetor[j] < vetor[min_index]:
                min_index = j
        vetor[i], vetor[min_index] = vetor[min_index], vetor[i]

vetor = [64, 25, 12, 22, 11]
selection_sort(vetor)
print("Vetor ordenado:", vetor)