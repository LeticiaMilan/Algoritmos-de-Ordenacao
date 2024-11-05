def mergesort(a):
    if len(a) < 2:
        return a
    meio = len(a) // 2
    esquerda = mergesort(a[:meio])
    direita = mergesort(a[meio:])
    return mesclar(esquerda, direita)

def mesclar(esquerda, direita):
    arr = []
    i = j = 0
    while i < len(esquerda) and j < len(direita):
        if esquerda[i] < direita[j]:
            arr.append(esquerda[i])
            i += 1
        else:
            arr.append(direita[j])
            j += 1
    arr += esquerda[i:]
    arr += direita[j:]
    return arr

a = [5, 2, 4, 6, 1, 3]

print(mergesort(a))
