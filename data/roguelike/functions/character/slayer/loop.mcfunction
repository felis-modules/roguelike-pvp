
# 포션 관련 코드

# 궁극기 관련 코드

execute as @s[scores={RP_USED_CSTICK=1..,RP_COOL1=..1}] run scoreboard players set @s[nbt={SelectedItem:{tag:{darkrune:1b}}}] sl_dark_rune 140
execute as @s[scores={RP_USED_CSTICK=1..,RP_COOL1=..1}] run scoreboard players set @s[nbt={SelectedItem:{tag:{slsword:1b}},Inventory:[{tag:{darkrune:1b},Slot:-106b}]}] sl_dark_rune 140

execute at @s[scores={sl_dark_rune=140}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800
execute at @s[scores={sl_dark_rune=140}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800
execute at @s[scores={sl_dark_rune=140}] run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..20]
# effect give @s[scores={sl_dark_rune=1..}] haste 7 8 false
effect give @s[scores={sl_dark_rune=140}] health_boost 7 1 false
scoreboard players set @s[scores={sl_dark_rune=140}] cd_dmg -80
effect give @s[scores={sl_dark_rune=140}] speed 7 1 false
# effect give @s[scores={sl_dark_rune=140}] weakness 7 0 false

execute if entity @a[scores={sl_dark_rune=140}] run tellraw @a [{"text":"[클래스 PVP] ","color":"gray","bold":false,"italic":false},{"selector":"@a[scores={sl_dark_rune=1..}]","bold":true,"italic":false},{"text":" 가 어둠의 룬 검을 사용했습니다!","color":"gray","bold":false,"italic":false}]

execute store result score @s[scores={sl_dark_rune=140}] RP_COOL1 run data get storage roguelike:rp rp_sl_cool1

scoreboard players remove @s[scores={sl_dark_rune=1..}] sl_dark_rune 1

execute as @a[tag=slayer,scores={RP_WEAPON_COOL=..16}] run attribute @s generic.attack_damage modifier remove 2c52968e-b6de-4331-b72e-1e6c3f234fad