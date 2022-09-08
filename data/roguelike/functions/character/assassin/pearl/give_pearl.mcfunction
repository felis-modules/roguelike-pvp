execute if entity @s[nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] run give @s ender_pearl{invparse:300001,display:{Name:'{"text":"암살자의 엔더 진주","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"자동 충전형 엔더 진주이다.","color":"gray","bold":false,"italic":false}']}}

execute as @s[tag=assassin,nbt={Inventory:[{id:"minecraft:slime_ball"}]},scores={as_pearl=0}] run function roguelike:character/assassin/pearl/replace_ball

execute store result score @s RP_COOL1 run data get storage roguelike:rp rp_as_cool1

execute store result score @s as_pearl run data get entity @s Inventory[{id:"minecraft:ender_pearl"}].Count