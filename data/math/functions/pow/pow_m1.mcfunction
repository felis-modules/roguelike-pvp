scoreboard players operation .exp math %= 2 math
execute if score .exp math matches 1 run scoreboard players set .out math -1
execute if score .exp math matches 0 run scoreboard players set .out math 1
scoreboard players set .exp math 0
scoreboard players set .base math 0