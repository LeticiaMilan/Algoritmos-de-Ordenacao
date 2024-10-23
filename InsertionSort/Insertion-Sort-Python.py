def insertion_sort(arr):
    for i in range(1, len(arr)):
        chave = arr[i]
        j = i - 1
        while j >= 0 and chave < arr[j]:
            arr[j + 1] = chave[j]
            j -= 1
        arr[j + 1] = chave

arr = [12, 11, 13, 5, 6]
insertion_sort(arr)
print("Array ordenado:", arr)