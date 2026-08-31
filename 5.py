L1=[23,45,12,67,10]
L2=[3,5,12,7,5]
#L3=[]
#for i in range(len(L1)):
    #L3.append(L1[i]-L2[i])
#print(L3)
print([L1[i]-L2[i] for i in range(len(L1))])