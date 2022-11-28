'''for i in range(4):
    print("*"*5)'''

'''
for i in range(4,0,-1):
 print("*"*(i))'''
'''n=5
for i in range(1,n+1 ):
     print(" "*(n-i)+"*"*i)'''
n=4
'''for i in range(n):
    print(" "*(n-i)+"*"*((2*i)+1))
for i in range(n,-1,-1):
     print(" "*(n-i)+"*"*((2*i)+1))'''
for i in range(n):
    if(i==0):
        print(" "*(n-i)+"*")
    else:
        print(" "*(n-i)+"*"+ " "*((2*(i-1))+1)+"*")
for i in range(n,-1,-1):
    if(i==0):
        print(" "*(n-i)+"*")
    else:
        print(" "*(n-i)+"*"+ " "*((2*(i-1))+1)+"*")
