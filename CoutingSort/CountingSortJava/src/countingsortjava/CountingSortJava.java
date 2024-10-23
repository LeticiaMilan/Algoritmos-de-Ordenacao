package countingsortjava;

import java.util.Arrays;

public class CountingSortJava {

    public static void countingSort(int[] vetor) {
        int max = Arrays.stream(vetor).max().getAsInt();
        int[] contagem = new int[max + 1];
        int[] ordenado = new int[vetor.length];

        for (int num : vetor) {
            contagem[num]++;
        }

        for (int i = 1; i <= max; i++) {
            contagem[i] += contagem[i - 1];
        }

        for (int i = vetor.length - 1; i >= 0; i--) {
            ordenado[contagem[vetor[i]] - 1] = vetor[i];
            contagem[vetor[i]]--;
        }

        System.arraycopy(ordenado, 0, vetor, 0, vetor.length);
    }

    public static void main(String[] args) {
        int[] vetor = {4, 2, 2, 8, 3, 3, 1};
        countingSort(vetor);
        System.out.println("Vetor ordenado: " + Arrays.toString(vetor));
    }

}
