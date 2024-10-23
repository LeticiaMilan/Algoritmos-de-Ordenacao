algoritmo "CountingSort"
var
   i, j, n, max: inteiro
   vetor, contagem, ordenado: vetor[1..100] de inteiro

inicio
   escreva("Digite o tamanho do vetor: ")
   leia(n)

   para i de 1 ate n faca
      escreva("Digite o elemento ", i, ": ")
      leia(vetor[i])
   fimpara

   max <- vetor[1]
   para i de 2 ate n faca
      se vetor[i] > max entao
         max <- vetor[i]
      fimse
   fimpara

   para i de 0 ate max faca
      contagem[i] <- 0
   fimpara

   para i de 1 ate n faca
      contagem[vetor[i]] <- contagem[vetor[i]] + 1
   fimpara

   para i de 1 ate max faca
      contagem[i] <- contagem[i] + contagem[i-1]
   fimpara

   para i de n ate 1 faca
      ordenado[contagem[vetor[i]]] <- vetor[i]
      contagem[vetor[i]] <- contagem[vetor[i]] - 1
   fimpara

   escreva("Vetor ordenado: ")
   para i de 1 ate n faca
      escreva(ordenado[i], " ")
   fimpara
fimalgoritmo