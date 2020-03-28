########################### Primeiro script ###################################
1+1
2*3
6/2
2^3
2//3+2//3

######### notação infixa #######################
+(2,3,6)
/(9,3)
*(2,3,6,5)

a=2
a
typeof(a)
b=8.6
typeof(b)

exp(2)

##### definindo variaveis gregas ##############
π
α=0.05
α+2

λ=2
λ^2

################## Strings ################################
c="Hoje é dia 16"
c

dia=16
d="Hoje é dia $dia"

typeof(c)

v=[3,2,1]
typeof(v)

soma=0
for i in 1:100
  global soma = soma + 1
end
soma

k=true
typeof(k)

X = [1 1 2; 3 5 8; 13 21 34]
A=[1 2 3; 3 2 1]
B=[3.6 122; 3 2]


if soma==100
    resposta="parabens"
else
    resposta="mto ruim"
end

######## funçao #################################
function somatorio(x,y)
    x+y
end

somatorio(2,3)
    
function multiplicação(x,y)
    x*y    
end

multiplicação(5,3)

c=0
d=[]
while c<3
    global d=[d;c]
    global c=c+1   
end

d

v=[1,2,3]
f=[v;5]
