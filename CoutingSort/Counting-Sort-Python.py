def counting_sort(vetor):
    max_val = max(vetor)
    contagem = [0] * (max_val + 1)
    ordenado = [0] * len(vetor)

    for num in vetor:
        contagem[num] += 1

    for i in range(1, len(contagem)):
        contagem[i] += contagem[i - 1]

    for num in reversed(vetor):
        ordenado[contagem[num] - 1] = num
        contagem[num] -= 1

    return ordenado

vetor = [4, 2, 2, 8, 3, 3, 1]
vetor_ordenado = counting_sort(vetor)
print("Vetor ordenado:", vetor_ordenado)