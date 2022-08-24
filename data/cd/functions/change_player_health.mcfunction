## given damage :
# tellraw @a {"score":{"name":"@s","objective":"cd_dmg"}}

## calculate resistance buffs on hurtter : editted by roguelike-pvp
execute store result score .resistance cd_dmg run data get entity @s ActiveEffects[{Id:11}].Amplifier

execute if score .resistance cd_dmg matches 0 run scoreboard players operation @s cd_dmg *= 100 const
execute if entity @s[nbt={ActiveEffects:[{Id:11,Amplifier:0b}]}] run scoreboard players operation @s cd_dmg *= 80 const
execute if score .resistance cd_dmg matches 1 run scoreboard players operation @s cd_dmg *= 60 const
execute if score .resistance cd_dmg matches 2 run scoreboard players operation @s cd_dmg *= 40 const
execute if score .resistance cd_dmg matches 3 run scoreboard players operation @s cd_dmg *= 20 const
execute if score .resistance cd_dmg matches 4.. run scoreboard players operation @s cd_dmg *= 0 const
scoreboard players operation @s cd_dmg /= 100 const

## calculates the armor if the damage is not penetrating
execute store result score @s cd_armor run attribute @s minecraft:generic.armor get 10
execute if score @s cd_dmg matches 1.. if score @s cd_armor matches 1.. run function cd:calc_armor
execute if score @s cd_dmg2 matches 1.. run scoreboard players operation @s cd_dmg = @s cd_dmg2
scoreboard players reset @s cd_dmg2

execute store result score @s cd_hp_max run attribute @s minecraft:generic.max_health get 10
# tellraw @a {"score":{"name":"@s","objective":"cd_hp_max"}}
execute store result score @s cd_hp_e run data get entity @s Health 10
execute store result score @s cd_abs run data get entity @s AbsorptionAmount 10
#execute if score @s cd_dmg > @s cd_abs run scoreboard players operation @s cd_hp_max += @s cd_abs
#execute if score @s cd_dmg > @s cd_abs run scoreboard players operation @s cd_dmg -= @s cd_abs
scoreboard players operation @s cd_hp_max += @s cd_abs
scoreboard players operation @s cd_hp_e -= @s cd_dmg
scoreboard players operation @s cd_hp_max -= @s cd_hp_e
scoreboard players operation @s cd_hp_e -= @s cd_abs

## assertions

# tellraw @a {"score":{"name":"@s","objective":"cd_dmg"}}
# tellraw @a {"score":{"name":"@s","objective":"cd_hp_e"}}
tellraw @a {"score":{"name":"@s","objective":"cd_hp_max"}}

# execute if score @s cd_hp_e matches ..0 run kill @s
effect give @s instant_health 1 7 true

## check dead 
execute if score @s cd_hp_e matches ..0 run tellraw @a [{"text":"[클래스 PVP] "},{"selector":"@a[scores={cd_attacker=1..}]"},{"text":" ⟾ "},{"nbt":"SelectedItem.tag.display.Name","entity":"@a[scores={cd_attacker=1..}]","interpret":true,"bold":false,"italic":false},{"text":" ⟾ "},{"selector":"@s"}]
execute if score @s cd_hp_e matches ..0 run effect give @s instant_damage 1 20 true

execute if score .toggle mp_elo matches 1 run execute if score @s cd_hp_e matches ..0 run function roguelike:multiplayer/dead
execute if score .toggle mp_elo matches 1 run execute as @a[scores={cd_attacker=1}] run function roguelike:multiplayer/killer
execute if score .toggle mp_elo matches 1 run function roguelike:multiplayer/cal_elo

scoreboard players set @a cd_attacker 0

#execute if score @s cd_abs > @s cd_dmg if score @s cd_dmg matches 1.. run tag @s add cd.takeAbsorptionDamage
## cd_hp_max in this time indicates the subtracted value of between health & max_health
execute if score @s cd_hp_max matches 0.. run tag @s add cd.takeDamage
execute if score @s cd_hp_max matches ..-1 at @s run playsound entity.generic.hurt master @a ~ ~ ~ 1
#execute if score @s cd_hp_max matches 0.. run effect clear @s absorption

function cd:shell/apply_health
scoreboard players reset @s cd_dmg

#execute if score @s cd_hp_max matches ..0 if score @s cd_abs matches ..0 run effect give @s instant_health 1 5 true
#execute if score @s cd_hp_max matches 0.. run effect give @s instant_health 1 5 true

execute if score @s cd_hp_max matches 0.. run schedule function cd:change_player_health_reset 1t