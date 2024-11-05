# Recursivo:

def quick_sort(A, inicio, fim):
    if inicio < fim:
        pivo = particionar(A, inicio, fim)
        quick_sort(A, inicio, pivo - 1)
        quick_sort(A, pivo + 1, fim)

def particionar(A, inicio, fim):
    pivo = A[fim]
    i = inicio - 1
    for j in range(inicio, fim):
        if A[j] <= pivo:
            i += 1
            A[i], A[j] = A[j], A[i]
    A[i + 1], A[fim] = A[fim], A[i + 1]
    return i + 1

A = [5, 2, 4, 6, 1, 3]

quick_sort(A, 0, len(A) - 1)
print(A)

# Iterativo:

def quick_sort(A):
    inicio = 0
    fim = len(A) - 1
    pilha = []
    pilha.append((inicio, fim))
    while pilha:
        inicio, fim = pilha.pop()
        pivo = particionar(A, inicio, fim)
        if pivo - 1 > inicio:
            pilha.append((inicio, pivo - 1))
        if pivo + 1 < fim:
            pilha.append((pivo + 1, fim))

def particionar(A, inicio, fim):
    pivo = A[fim]
    i = inicio - 1
    for j in range(inicio, fim):
        if A[j] <= pivo:
            i += 1
            A[i], A[j] = A[j], A[i]
    A[i + 1], A[fim] = A[fim], A[i + 1]
    return i + 1

A = [5, 2, 4, 6, 1, 3]

quick_sort(A)
print(A)
