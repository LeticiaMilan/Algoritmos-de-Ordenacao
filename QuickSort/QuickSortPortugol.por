...

procedimento quicksort(lista, inicio, fim)
  se inicio < fim então
    pivo_indice = particionar(lista, inicio, fim)
    quicksort(lista, inicio, pivo_indice - 1)
    quicksort(lista, pivo_indice + 1, fim)
  fim se
fim procedimento

função particionar(lista, inicio, fim)
  pivo = lista[fim]
  i = inicio - 1
  para j de inicio até fim - 1 faça
    se lista[j] <= pivo então
      i = i + 1
      trocar(lista[i], lista[j])
    fim se
  fim para
  trocar(lista[i + 1], lista[fim])
  retorne i + 1
fim função

procedimento trocar(a, b)
  temp = a
  a = b
  b = temp
fim procedimento

...