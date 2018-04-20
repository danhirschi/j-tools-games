NB. load '/home/dan/Documents/J_Projects/Mastermind/Mastermind_v4.ijs'


blackscore=: 4 : '+/ x = y'

NB. this is actually all the digits in the solution (mastermind would be all whitescore-blackscore)
whitescore1=: 4 : 0    NB. x = key   y = guess    use recursion
if. 0 = # x  do. r=. 0
NB. match all of y to first element of x.  if digit match(s), nb will remove first instance from y  
else. nb =. y ([: -. ([: i. [: # [) e. ] {.~ 1 <. [: # ]) I. b =. y = {. x
r =. (+./ b) + (}. x) whitescore1 nb # y   NB. add 1 if there were any matches
end.
)

whitescore2=: 4 : 0    NB. x = key   y = guess
cmb=. ~. x,y
x1=. +/ x =/ cmb
y1=. +/ y =/ cmb
+/ x1 <. y1
)

NB. if using Numeralogic rules (no duplicates in guess or key)
whitescore3=: 4 : '+/ +/ x =/ y'


