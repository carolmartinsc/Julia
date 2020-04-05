#1)
#a)
function menor(x::Float64,y::Float64)
    if x<y
        return x
    else
        return y
    end
end
menor(2,3)
menor([2],2)
menor(2.6,2.4)
menor(-1,-2)


#b)
function menor_3(x::Float64,y::Float64,z::Float64)
    if x<y && x<z
        return x
    elseif y<x && y<z
        return y
    else
        return z
    end
end
menor_3(3,9,5)
menor_3(1,0.5,3)
        
#2)
function positivos(v::Array{Float64})
    n=0
    for i in 1:length(v)
        if v[i]>=0
            n=n+1
        end
    end
    return n   
end
positivos([2,-1,3,-0.5,-6,3,-0.7])

#usando funções
function positivos2(v::Array{Float64})
    length(filter(x -> x>0,v))
end
positivos2([3,-6,-9,2,1])

#3)
#a)
function multiplos(n,m)
    if typeof(m)==Int64 && typeof(n)==Int64 && m==m>0 && n>0
      v=[m]
      j=m
      while length(v)<n
          j=j+m
          if j % m == 0
            v=[v;j]
          end
        end
      return v
    else
        return "Os numeros precisam ser naturais"
    end    
end
multiplos(0.6,2)
multiplos(10,2)
multiplos(-4,9)

#b)
function multiplos_menores(k,m)
    if typeof(m)==Int64 && typeof(k)==Int64 && m>0 && k>0
        v=[m]
        j=m
        while j<(k-m)
            j=j+m
            if j%m==0
                v=[v;j]
            end
        end
        return v  
    else
        return "Os números precisam ser naturais"
    end
end
multiplos_menores(22,3)
multiplos_menores(-3,6)

#c)
function multiplos_quantidade(k,m)
    if typeof(m)==Int64 && typeof(k)==Int64 && m>0 && k>0
        v=1
        j=m
        while j<(k-m)
            j=j+m
            if j%m==0
                v=v+1
            end
        end
        return v  
    else
        return "Os números precisam ser naturais"
    end
end

multiplos_quantidade(22,3) == length(multiplos_menores(22,3))

# EXTRA: função em uma linha
soma(x,y)=x+y
soma(6,3)

#4)







    


