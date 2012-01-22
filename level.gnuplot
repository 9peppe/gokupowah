set title "Evoluzione del livello di combattimento di Kakarot"
set xlabel "Anno"
set ylabel "Powah"
set logscale y

set yrange [1:1e12]
set nokey

a=1
b=2
c=737

FIT_LIMIT = 1

f(x)=a*exp((x-c)*b)
#g(x)= d*x**3 + e*x**2 + f*x + g

fit f(x) "level.tsv" using 1:2 via a, b, c
#fit g(x) "level.tsv" using 1:2 via d,e,f,g

plot "level.tsv", f(x) #, g(x)