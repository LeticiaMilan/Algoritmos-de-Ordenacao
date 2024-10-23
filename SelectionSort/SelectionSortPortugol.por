algoritmo "SelectionSort"
var
   i, j, n, minIndex, temp: inteiro
   vetor: vetor[1..100] de inteiro

inicio
   escreva("Digite o tamanho do vetor: ")
   leia(n)

   para i de 1 ate n faca
      escreva("Digite o elemento ", i, ": ")
      leia(vetor[i])
   fimpara

   para i de 1 ate n-1 faca
      minIndex <- i
      para j de i+1 ate n faca
         se vetor[j] < vetor[minIndex] entao
            minIndex <- j
         fimse
      fimpara
      temp <- vetor[minIndex]
      vetor[minIndex] <- vetor[i]
      vetor[i] <- temp
   fimpara

   escreva("Vetor ordenado: ")
   para i de 1 ate n faca
      escreva(vetor[i], " ")
   fimpara
fimalgoritmo