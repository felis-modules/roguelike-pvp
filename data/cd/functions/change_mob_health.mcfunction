## calculates the armor if the damage is not penetrating
execute if score @s cd_dmg matches 1.. if score @s cd_armor matches 1.. run function cd:calc_armor
scoreboard players operation @s cd_dmg = @s cd_dmg2
scoreboard players reset @s cd_dmg2

execute at @s run playsound entity.generic.hurt master @a ~ ~ ~ 1

## damages the mob and modifies its health
execute if score @s cd_dmg matches 1.. run effect give @s minecraft:wither 1 1 true
execute store result score @s cd_hp_e run data get entity @s Health 1
execute if score @s cd_dmg matches 1.. run scoreboard players remove @s cd_dmg 1
scoreboard players operation @s cd_hp_e -= @s cd_dmg

execute if score @s cd_hp_e matches ..0 run kill @s 
scoreboard players reset @s cd_dmg
execute store result storage cd:entity Health float 1 run scoreboard players get @s cd_hp_e
data modify entity @s Health set from storage cd:entity Health