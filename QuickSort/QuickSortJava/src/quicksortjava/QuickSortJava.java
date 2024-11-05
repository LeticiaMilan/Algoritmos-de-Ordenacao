package quicksortjava;

import java.util.Stack;

public class QuickSortJava {

    public static void main(String[] args) {
        int[] a = {6, 5, 4, 3, 2, 1};
        int n = a.length;
        quicksort(a, 0, n - 1);
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " ");
        }

        System.out.println();

        int[] b = {6, 5, 4, 3, 2, 1};
        quicksort2(b);
        
        for (int i = 0; i < n; i++) {
            System.out.print(b[i] + " ");
        }

    }

    public static void quicksort(int[] a, int inicio, int fim) {
        if (inicio < fim) {
            int pivo = particionar(a, inicio, fim);
            quicksort(a, inicio, pivo - 1);
            quicksort(a, pivo + 1, fim);
        }
    }

    private static int particionar(int[] a, int inicio, int fim) {
        int pivo = a[fim];
        int i = (inicio - 1);
        for (int j = inicio; j < fim; j++) {
            if (a[j] <= pivo) {
                i++;
                trocar(a, i, j);
            }
        }
        trocar(a, i + 1, fim);
        return (i + 1);
    }

    private static void trocar(int[] a, int i, int j) {
        int aux = a[i];
        a[i] = a[j];
        a[j] = aux;
    }

    // iterativo:

    public static void quicksort2(int[] a) {
    Stack<int[]> pilha = new Stack<>();
    pilha.push(new int[] {0, a.length - 1}); 
    
        while (!pilha.isEmpty()) {
            int[] intervalo = pilha.pop();
            int inicio = intervalo[0];
            int fim = intervalo[1];
            
            if (inicio < fim) {
                int pivo = particionar(a, inicio, fim);
                
                pilha.push(new int[] {inicio, pivo - 1}); 
                pilha.push(new int[] {pivo + 1, fim});    
            }
        }
    }
}
