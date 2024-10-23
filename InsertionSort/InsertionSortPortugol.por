algoritmo "InsertionSort"
var
    i, j, key, n: inteiro
    arr: vetor[1..100] de inteiro
inicio
    escreva("Digite o tamanho do array: ")
    leia(n)
    para i de 1 ate n faca
        escreva("Digite o elemento ", i, ": ")
        leia(arr[i])
    fimpara

    para i de 2 ate n faca
        key := arr[i]
        j := i - 1
        enquanto (j > 0 e arr[j] > key) faca
            arr[j+1] := arr[j]
            j := j - 1
        fimenquanto
        arr[j+1] := key
    fimpara

    escreva("Array ordenado: ")
    para i de 1 ate n faca
        escreva(arr[i], " ")
    fimpara
fimalgoritmo