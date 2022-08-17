

tellraw @s[scores={RP_COOL1=1},nbt=!{Inventory:[{tag:{tech:1b}}]}] {"text":"[클래스 PVP] 테크니컬 활 사용 가능","color":"gray","bold":false,"italic":false}
tellraw @s[scores={RP_COOL2=1},nbt=!{Inventory:[{tag:{poison:1b}}]}] {"text":"[클래스 PVP] 독 다트 사용 가능","color":"gray","bold":false,"italic":false}

execute as @s[scores={RP_COOL1=..1},nbt=!{Inventory:[{tag:{tech:1b}}]}] run function roguelike:character/archer/techinical_bow

execute as @s[scores={ar_poison=..1},nbt=!{Inventory:[{tag:{poison:1b}}]}] run function roguelike:character/archer/poison_dart

scoreboard players set @s[scores={ar_skill=..1},nbt=!{Inventory:[{tag:{tech:1b}}]}] ar_skill 0

scoreboard players add @s[scores={ar_skill=..30}] ar_skill 1

scoreboard players set @s[scores={ar_poison=17..},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{poison:1b}}]}] ar_poison 0
scoreboard players add @a[tag=archer,scores={ar_poison=..17}] ar_poison 1

execute store result score @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{tech:1b}}]}] RP_COOL1 run data get storage roguelike:rp rp_
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{poison:1b}}]}] ar_poison 18