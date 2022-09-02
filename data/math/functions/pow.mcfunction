# 1. get .base
# 2. get .exp
# 3. calculate and put output to .out 

# if base is 0 : finished calculation (return)

execute if score .base math matches 1 run function math:pow/pow_1

execute if score .base math matches -1 run function math:pow/pow_m1
execute if score .base math matches 2.. run scoreboard players operation .originBase math = .base math
execute if score .base math matches 2.. run function math:pow/recursion