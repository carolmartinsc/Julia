###################### Exercícios de Controle de Fluxo #############################
#1)
function tipo_triangulo(a,b,c)
    if a==b & a==c & b==c
        return "Triângulo Equilátero"
    elseif a==b || a==c || c==b
        return "Triângulo Isósceles"
    else
        return "Triângulo Escaleno"
    end    
end
tipo_triangulo(3,4,3)

#2.1)
x=[]
i=0

while length(x)<100
 global i=i+1
   if i % 3 == 0
       global x=[x;i]
   end
end
x
length(x)

#2.2)
x=[]
i=1

while i<100
    if i % 3 == 0
       global x=[x;i]
       
    end
  global i=i+1
end
x
length(x)

#2.3)
x=[]
i=0

while length(x)<100
    global i=i+1
      if i % 2 == 1
          global x=[x;i]
      end
end
x
length(x)

#3)
using LinearAlgebra
#a)
A= Matrix{Union{Missing,Int64}}(missing,10,10) #criando a matriz vazia

for i in 1:10
    global A[1,i]=1
end
A

#b)
B = Matrix{Union{Missing, Int64}}(missing,10,10)

for i in 1:10
    for j in 1:10
      global B[i,j] = i
    end
end
B

#c)
C= Matrix{Union{Missing, Int64}}(missing,100,100)

for i in 1:100
    for j in 1:100
        global C[j,i] = i
    end
end
C   

#d)
D=Matrix{Union{Missing, Int64}}(missing,100,100)

for i in 1:100
    for j in 1:100
        if i % 2 == 0
            D[i,j] = 2
        else
            D[i,j] = 1
        end
    end
end
D

#4)
#a)
A=Matrix{Union{Missing, Int64}}(missing,100,100)

for i in 1:100  
    global A[i,i] = i
end
A

#b)
B=Matrix(undef,100,100) #outra forma de criar a matriz vazia

for i in 1:100
    global B[i,i]= 100 - i + 1
end
B

#5)
#a)
L1=Vector(undef,10)
for i in 1:10
    L1[i]=i
end
L1

#b)
L2=Vector(undef,10)
for i in 1:10
        L2[i]=[[repeat([1],i)]]
end
L2
L2[3]
L2[6]

#c)
L3=collect(Union{Array, Int64},1:10) #um vetor que pode guardar vetores e inteiros
for i in 1:10
    n=1
    j=i
   while n < 10
      j= j + 1
      if j % i == 0
         global L3[i]= [L3[i] ; j]
         n=length(L3[i])
      end  
    end 
end
L3
length(L3[1])
L3[6]

#d) MELHORAR!!!!
L4=collect(Union{Array, Int64},2:2:20)
for i in 1:10
  n=1
  j=1
  while n < i
      j= j + 1
      if j % 2 == 0
         L4[i]=[L4[i];j]
         n=n+1
      end
    end
end
L4
L4[3]
length(L4[3])

#e)
using LinearAlgebra
L5=collect(Union{Array, Int64},1:10)

for i in 1:10
    L5[i]=Matrix{Int64}(I,i,i)
end
L5
L5[1]
L5[3]
L5[5]

#6)
#a)
sum(L1)
soma=0
for i in 1:10
    global soma=soma + L1[i]
end
soma

#b)
soma2=0
for i in 1:length(L3)
    soma1=sum(L3[i])
    global soma2=soma2+soma1
end
soma2

#7)
#a)
soma=Vector(undef,10)
for i in 1:length(L4)
    soma[i]=sum(L4[i])
end
soma

#b) #pensar melhor 

#c) depende do item b)

#8) P.A
#a)
y=Vector(undef,100)
x0= 2
r=3
y[1]=x0
for i in 2:100
    y[i]=y[i-1] + r
end
y

#b)
soma=0
for i in 1:35
    global soma=soma + y[i]
end
soma

s35=((y[1]+y[35])*35)/2

#c)
n=0
for i in 1:length(y)
    if y[i]%4==0
       global n=n+1
    end
end
n

#d)
n=0
for i in 1:length(y)
    if y[i]%4==0 && y[i]%5==0
        global n = n+1
    end
end
n

#e)
n=0
for i in 1:length(y)
    if y[i]%4==0 || y[i]%5==0
        global n = n+1
    end
end
n

#f)
x=Vector(undef, length(y))
for i in 1:length(y)
    if y[i]%2==0
        x[i]=y[i]
    else
        x[i]=0
    end
end
x






















