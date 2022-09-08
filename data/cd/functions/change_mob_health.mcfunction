

## calculate resistance buffs on hurtter : editted by roguelike-pvp
execute store result score .resistance cd_dmg run data get entity @s ActiveEffects[{Id:11}].Amplifier

execute if score .resistance cd_dmg matches 0 run scoreboard players operation @s cd_dmg *= 100 const
execute if entity @s[nbt={ActiveEffects:[{Id:11,Amplifier:0b}]}] run scoreboard players operation @s cd_dmg *= 80 const
execute if score .resistance cd_dmg matches 1 run scoreboard players operation @s cd_dmg *= 60 const
execute if score .resistance cd_dmg matches 2 run scoreboard players operation @s cd_dmg *= 40 const
execute if score .resistance cd_dmg matches 3 run scoreboard players operation @s cd_dmg *= 20 const
execute if score .resistance cd_dmg matches 4.. run scoreboard players operation @s cd_dmg *= 0 const
scoreboard players operation @s cd_dmg /= 100 const

say 처리전 : 들어온 데미지 (단위 0.1 반 하트 (하트 한개 = 20))
tellraw @a {"score":{"name":"@s","objective":"cd_dmg"}}

## calculates the armor if the damage is not penetrating
execute store result score @s cd_armor run data get entity @s Attributes[{Name:"minecraft:generic.armor"}].Base 10
execute if score @s cd_dmg matches 1.. if score @s cd_armor matches 1.. run function cd:calc_armor
execute if score @s cd_dmg2 matches 1.. run scoreboard players operation @s cd_dmg = @s cd_dmg2
scoreboard players reset @s cd_dmg2

execute at @s run playsound entity.generic.hurt master @a ~ ~ ~ 1

## damages the mob and modifies its health
execute if score @s cd_dmg matches 1.. run effect give @s minecraft:wither 1 1 true
execute store result score @s cd_hp_e run data get entity @s Health 10
# execute if score @s cd_dmg matches 1.. run scoreboard players remove @s cd_dmg 1
scoreboard players operation @s cd_hp_e -= @s cd_dmg

execute if score @s cd_hp_e matches ..0 run tellraw @a[scores={cd_attacker=1}] [{"text":"[클래스 PVP] "},{"selector":"@a[scores={cd_attacker=1..}]"},{"text":" ⟾ "},{"nbt":"SelectedItem.tag.display.Name","entity":"@a[scores={cd_attacker=1..}]","interpret":true,"bold":false,"italic":false},{"text":" ⟾ "},{"selector":"@s"}]
execute if score @s cd_hp_e matches ..0 run kill @s

## assertions

say 처리후 : 들어온 데미지 (단위 0.1 반 하트 (하트 한개 = 20))
tellraw @a {"score":{"name":"@s","objective":"cd_dmg"}}
say 계산후의 현재 체력
tellraw @a {"score":{"name":"@s","objective":"cd_hp_e"}}
say 계산후 최대체력으로부터 현재 체력까지의 차이값
tellraw @a {"score":{"name":"@s","objective":"cd_hp_max"}}

scoreboard players reset @s cd_dmg
execute store result storage cd:entity Health float 0.1 run scoreboard players get @s cd_hp_e
data modify entity @s Health set from storage cd:entity Health