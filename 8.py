#extract vowels from the given text and using vowels create list
V="Hello"
#L=[]
#for i in V:
    #if i.lower() in "aeiou":
        #L.append(i)
#print(L)
print([i for i in V if i.lower() in "aeiou"])