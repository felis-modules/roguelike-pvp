# .mod : if the exponent value is even or odd.
# .isDividable : if the exponent can be divied by half.
#                over 1 is true, 0 is false.

scoreboard players operation .isDividable math = .exp math
scoreboard players operation .isDividable math /= 2 math
scoreboard players operation .mod math %= 2 math

execute if score .isDividable math matches 1.. run scoreboard players operation .base math *= .base math
execute if score .isDividable math matches 1.. run scoreboard players operation .exp math /= 2 math
execute if score .isDividable math matches 1.. if score .mod math matches 1 run scoreboard players add .exp math 1
execute if score .isDividable math matches 1.. run function math:pow/recursion

execute if score .isDividable math matches 0 if score .base math matches 1.. run function math:pow/basis