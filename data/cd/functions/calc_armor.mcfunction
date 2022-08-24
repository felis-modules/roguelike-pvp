scoreboard players operation @s cd_armor_e = @s cd_armor
scoreboard players operation @s cd_armor_e *= 4 const
scoreboard players operation @s cd_armor_e *= @s cd_dmg
execute store result score @s cd_tough run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation @s cd_var = 160 const
scoreboard players operation @s cd_var *= @s cd_dmg
scoreboard players operation @s cd_var *= @s cd_dmg
scoreboard players operation @s cd_tough += 80 const
scoreboard players operation @s cd_var /= @s cd_tough
scoreboard players operation @s cd_armor_e -= @s cd_var
scoreboard players operation @s cd_armor_e /= 1000 const
execute if score @s cd_armor_e matches ..0 run scoreboard players add @s cd_armor_e 1
scoreboard players operation @s cd_dmg -= @s cd_armor_e 
# tellraw @a {"score":{"name":"@s","objective":"cd_dmg"}}
execute if score @s cd_dmg matches ..0 run scoreboard players add @s cd_dmg 1
