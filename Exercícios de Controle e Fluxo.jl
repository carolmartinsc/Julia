###################### Exercícios de Controle e Fluxo e Funções #############################
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
L3=Vector(undef, 10)
for i in 1:10
    for j in 1:100
        if 
        L3[i]=















