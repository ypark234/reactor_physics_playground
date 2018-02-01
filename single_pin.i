Single LWR fuel pin in a water cell with reflective boundaries
c     cell cards
c fuel unit cell
11 1 -10.5 -14 15 -11 imp:n=1 vol= 192.814 $ UO2 fuel pellet
12 0 (-14 15 11 -12):(14 -16 -12):(-15 17 -12) imp:n=1 vol=7.80828 $ gap
13 3 -6.4 (-16 17 12 -13):(16 -18 -13):(-17 19 -13) imp:n=1
      vol=53.4643 $ Zr clad
14 2 -0.7 (13:18:-19) -7 8 -9 10 imp:n=1 $ water surrounding
99 0 7:-8:9:-10 imp:n=0 $ outside world

c     surface cards
*7 px .625     $ unit cell reflective boundaries
*8 px -.625
*9 py .625
*10 py -.625
c  
11 cz .4095 $ pellet outer radius
12 cz .4177 $ gap outer radius
13 cz .47   $ clad outer radius
14 pz 183        $ top of fuel rod
15 pz -183       $ bottom of fuel rod
16 pz 183.0082   $ top of gap
17 pz -183.0082  $ bottom of gap
18 pz 183.0654   $ top of clad
19 pz -183.0654  $ bottom of clad

c     data cards
c     burnup card
burn time=0.2 4r 0.5 3r 10 2r 100 3r 300 2r
     pfrac=1 18r
     power=6.69454e-2  $ 3411MWth / 193 assemblies / (17X17-25) rods
     bopt=1 24 -1  $ including Tier 3 fission products
     mat=1 omit= -1 4 6014 7016 8018 9018
c     material cards
m1      8016.82c .0468450
       92235.82c .0007114 
       92238.82c .0227111     $ UO2 rho=10.5g/cm3 (3w/o u-235), 1000 K
mt1 o2-u.26t u-o2.26t  $ s(a,b) for m1 oxygen in uO2, u-238 in uO2 at 1000 K
m2      1001.81c .0669020
        1002.81c .0000100
        8016.81c .0334560     $ H2O rho=0.7g/cm3, 600 K
mt2 lwtr.26t  $ h in lightwater s(a,b) thermal neutron treatment at 600 K
m3     40090.81c 0.021737625
       40091.81c 0.004740450
       40092.81c 0.007245875
       40094.81c 0.007343050
       40096.81c 0.001183000  $ pure Zr rho=6.4g/cm3, 600 K
c 
c     Criticality Control Cards
kcode 10000 1.0 100 300
ksrc 0 0 0
mode n
