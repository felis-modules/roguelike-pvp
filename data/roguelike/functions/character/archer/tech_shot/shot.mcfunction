execute at @s run summon area_effect_cloud ^ ^ ^0.1 {Duration:20,Tags:["pos"]}
## store armorstand pos / player pos
execute store result score .playerpos0 ar_techshot run data get entity @s Pos[0] 10000
execute store result score .playerpos1 ar_techshot run data get entity @s Pos[1] 10000
execute store result score .playerpos2 ar_techshot run data get entity @s Pos[2] 10000
execute as @e[type=area_effect_cloud,tag=pos] run function roguelike:character/archer/tech_shot/get_pos_stand
# kill @e[type=area_effect_cloud,tag=pos,limit=1,sort=nearest]

scoreboard players operation .targetpos0 ar_techshot -= .playerpos0 ar_techshot
scoreboard players operation .targetpos1 ar_techshot -= .playerpos1 ar_techshot
scoreboard players operation .targetpos2 ar_techshot -= .playerpos2 ar_techshot

execute at @s run summon arrow ^0.8 ^1.2 ^0.8 {Tags:["skill_arr_left"],Owner:[I;1,1,1,1],Motion:[0.0d,0.0d,0.0d]}
execute at @s run summon arrow ^ ^1.2 ^0.8 {Tags:["skill_arr"],Owner:[I;1,1,1,1],Motion:[0.0d,0.0d,0.0d]}
execute at @s run summon arrow ^-0.8 ^1.2 ^0.8 {Tags:["skill_arr_right"],Owner:[I;1,1,1,1],Motion:[0.0d,0.0d,0.0d]}

tellraw @a {"score":{"name":".targetpos0","objective":"ar_techshot"}}
tellraw @a {"score":{"name":".targetpos1","objective":"ar_techshot"}}
tellraw @a {"score":{"name":".targetpos2","objective":"ar_techshot"}}

execute store result entity @e[type=arrow,tag=skill_arr,limit=1] Motion[0] double 0.001 run scoreboard players get .targetpos0 ar_techshot
execute store result entity @e[type=arrow,tag=skill_arr,limit=1] Motion[1] double 0.001 run scoreboard players get .targetpos1 ar_techshot
execute store result entity @e[type=arrow,tag=skill_arr,limit=1] Motion[2] double 0.001 run scoreboard players get .targetpos2 ar_techshot

execute store result entity @e[type=arrow,tag=skill_arr_left,limit=1] Motion[0] double 0.001 run scoreboard players get .targetpos0 ar_techshot
execute store result entity @e[type=arrow,tag=skill_arr_left,limit=1] Motion[1] double 0.001 run scoreboard players get .targetpos1 ar_techshot
execute store result entity @e[type=arrow,tag=skill_arr_left,limit=1] Motion[2] double 0.001 run scoreboard players get .targetpos2 ar_techshot

execute store result entity @e[type=arrow,tag=skill_arr_right,limit=1] Motion[0] double 0.001 run scoreboard players get .targetpos0 ar_techshot
execute store result entity @e[type=arrow,tag=skill_arr_right,limit=1] Motion[1] double 0.001 run scoreboard players get .targetpos1 ar_techshot
execute store result entity @e[type=arrow,tag=skill_arr_right,limit=1] Motion[2] double 0.001 run scoreboard players get .targetpos2 ar_techshot

## assertion 
  
execute at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.4 0

## get uuid
execute store result score .search0 ar_techshot run data get entity @s UUID[0]
execute store result score .search1 ar_techshot run data get entity @s UUID[1]
execute store result score .search2 ar_techshot run data get entity @s UUID[2]
execute store result score .search3 ar_techshot run data get entity @s UUID[3]

execute as @e[type=arrow,tag=skill_arr] run function roguelike:character/archer/tech_shot/process_arrow
execute as @e[type=arrow,tag=skill_arr_right] run function roguelike:character/archer/tech_shot/process_arrow
execute as @e[type=arrow,tag=skill_arr_left] run function roguelike:character/archer/tech_shot/process_arrow