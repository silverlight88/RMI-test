L = [31, 2, 11, 23, 8, 7, 11, 14, 20]
index = [1,2,3,4,5,6,7,8,9]
rank = [1,2,3,4,5,6,7,8,9]
length = len(L)
print('original:', L)

for i in range(len(L)):
    for j in range(len(L) - i - 1):
        if L[j] > L[j + 1]:
            temp1 = L[j]
            temp2 = index[j]
            rank[index[j] - 1] = rank[index[j] - 1] + 1
            rank[index[j + 1] - 1] = rank[index[j + 1] - 1] - 1
            L[j] = L[j + 1]
            index[j] = index[j + 1]
            L[j + 1] = temp1
            index[j + 1] = temp2

print('sorted:  ' , L)
print('index:   ' , index)
print('rank:    ' , rank)
