...

procedimento mergesort(lista, inicio, fim)
  se inicio < fim então
    meio = (inicio + fim) / 2
    mergesort(lista, inicio, meio)
    mergesort(lista, meio + 1, fim)
    mesclar(lista, inicio, meio, fim)
  fim se
fim procedimento

procedimento mesclar(lista, inicio, meio, fim)
  n1 = meio - inicio + 1
  n2 = fim - meio
  esquerda = lista[inicio até meio]  
  direita = lista[meio + 1 até fim] 
  i = 1
  j = 1
  k = inicio
  enquanto i <= n1 e j <= n2 faça
    se esquerda[i] <= direita[j] então
      lista[k] = esquerda[i]
      i = i + 1
    senão
      lista[k] = direita[j]
      j = j + 1
    fim se
    k = k + 1
  fim enquanto
  enquanto i <= n1 faça
    lista[k] = esquerda[i]
    i = i + 1
    k = k + 1
  fim enquanto
  enquanto j <= n2 faça
    lista[k] = direita[j]
    j = j + 1
    k = k + 1
  fim enquanto
fim procedimento

...