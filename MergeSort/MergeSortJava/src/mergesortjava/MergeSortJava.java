package mergesortjava;

public class MergeSortJava {

    public static void main(String[] args) {
        int[] arr = {6, 5, 4, 3, 2, 1};
        int n = arr.length;
        mergesort(arr, 0, n - 1);
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }
    }

    public static void mergesort(int[] arr, int esquerda, int direita) {
        if (esquerda < direita) {
            int meio = (esquerda + direita) / 2;
            mergesort(arr, esquerda, meio);
            mergesort(arr, meio + 1, direita);
            mesclar(arr, esquerda, meio, direita);
        }
    }

    private static void mesclar(int[] arr, int esquerda, int meio, int direita) {
        int n1 = meio - esquerda + 1;
        int n2 = direita - meio;
        int[] esq = new int[n1];
        int[] dir = new int[n2];
        for (int i = 0; i < n1; i++) {
            esq[i] = arr[esquerda + i];
        }
        for (int j = 0; j < n2; j++) {
            dir[j] = arr[meio + 1 + j];
        }
        int i = 0, j = 0, k = esquerda;
        while (i < n1 && j < n2) {
            if (esq[i] <= dir[j]) {
                arr[k] = esq[i];
                i++;
            } else {
                arr[k] = dir[j];
                j++;
            }
            k++;
        }
        while (i < n1) {
            arr[k] = esq[i];
            i++;
            k++;
        }
        while (j < n2) {
            arr[k] = dir[j];
            j++;
            k++;
        }
    }

}
