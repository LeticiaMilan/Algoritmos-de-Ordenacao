algoritmo "BubbleSort"
var
   i, j, n, temp: inteiro
   vetor: vetor[1..100] de inteiro

inicio
   escreva("Digite o tamanho do vetor: ")
   leia(n)

   para i de 1 ate n faca
      escreva("Digite o elemento ", i, ": ")
      leia(vetor[i])
   fimpara

   para i de 1 ate n-1 faca
      para j de 1 ate n-i faca
         se vetor[j] > vetor[j+1] entao
            temp <- vetor[j]
            vetor[j] <- vetor[j+1]
            vetor[j+1] <- temp
         fimse
      fimpara
   fimpara

   escreva("Vetor ordenado: ")
   para i de 1 ate n faca
      escreva(vetor[i], " ")
   fimpara
fimalgoritmo