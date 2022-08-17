# using USED_CARROTSTICK
# using DMG_TAKEN

scoreboard players set @a[tag=slayer,scores={RP_USED_CSTICK=1..,RP_COOL1=..1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{darkrune:1b}}}] sl_dark_rune 1
# scoreboard players set @a[scores={USED_CARROTSTICK=1..,sl_skill=25..},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{darkrune:1b},Slot:-106b}]}] sl_dark_rune 1

execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{darkrune:1b}}},scores={DMG_DEALT=1..}] run scoreboard players set @e[distance=..10,scores={DMG_TAKEN=1..}] sl_slow 1

execute at @a[scores={sl_dark_rune=1..}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800
execute at @a[scores={sl_dark_rune=1..}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800
execute at @a[scores={sl_dark_rune=1..}] run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..20]
effect give @a[scores={sl_dark_rune=1..}] haste 7 8 false
effect give @a[scores={sl_dark_rune=1..}] absorption 7 1 false
effect give @a[scores={sl_dark_rune=1..}] speed 7 1 false
effect give @a[scores={sl_dark_rune=1..}] weakness 7 0 false
effect give @a[scores={sl_slow=1..}] slowness 1 4 false

execute if entity @a[scores={sl_dark_rune=1..}] run tellraw @a [{"text":"[클래스 PVP] ","color":"gray","bold":false,"italic":false},{"selector":"@a[scores={sl_dark_rune=1..}]","bold":true,"italic":false},{"text":" 가 어둠의 룬 검을 사용했습니다!","color":"gray","bold":false,"italic":false}]

scoreboard players set @a sl_slow 0
execute store result score @a[tag=slayer,scores={sl_dark_rune=1..}] RP_COOL1 run data get storage minecraft:rp rp_sl_cool1
scoreboard players set @a[tag=slayer,scores={sl_dark_rune=1..}] sl_dark_rune 0
