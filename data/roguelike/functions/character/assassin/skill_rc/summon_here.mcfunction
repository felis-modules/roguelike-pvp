scoreboard players remove @s as_smoke 1

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.141 0.141 0.141 1",NoGravity:1b,Radius:3f,Duration:140,Tags:["aftersmoke"],Potion:"minecraft:empty"}
execute at @s run summon area_effect_cloud ~ ~0.35 ~ {Particle:"dust 0.141 0.141 0.141 1",NoGravity:1b,Radius:3f,Duration:140,Tags:["aftersmoke"],Potion:"minecraft:empty"}
execute at @s run summon area_effect_cloud ~ ~0.7 ~ {Particle:"dust 0.141 0.141 0.141 1",NoGravity:1b,Radius:3f,Duration:140,Tags:["aftersmoke"],Potion:"minecraft:empty"}
execute at @s run summon area_effect_cloud ~ ~1.05 ~ {Particle:"dust 0.141 0.141 0.141 1",NoGravity:1b,Radius:3f,Duration:140,Tags:["aftersmoke"],Potion:"minecraft:empty"}
execute at @s run summon area_effect_cloud ~ ~1.4 ~ {Particle:"dust 0.141 0.141 0.141 1",NoGravity:1b,Radius:3f,Duration:140,Tags:["aftersmoke"],Potion:"minecraft:empty"}

execute at @s run playsound entity.splash_potion.break master @a ~ ~ ~ 1 1 0
execute at @s run playsound entity.splash_potion.throw master @a ~ ~ ~ 1 0.6 0

## exchange unselected smoke item.

execute store result score .where as_smoke run data get entity @s Inventory[{tag:{smoke:1b}}].Slot

execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 0 run item replace entity @s hotbar.0 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 1 run item replace entity @s hotbar.1 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 2 run item replace entity @s hotbar.2 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 3 run item replace entity @s hotbar.3 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 4 run item replace entity @s hotbar.4 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 5 run item replace entity @s hotbar.5 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 6 run item replace entity @s hotbar.6 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 7 run item replace entity @s hotbar.7 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
execute if entity @s[scores={as_smoke=0}] if score .where as_smoke matches 8 run item replace entity @s hotbar.8 with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
# scoreboard players add @s[scores={as_smoke=0..2}] as_smoke 1/
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 0 run item replace entity @s hotbar.0 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 1 run item replace entity @s hotbar.1 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 2 run item replace entity @s hotbar.2 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 3 run item replace entity @s hotbar.3 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 4 run item replace entity @s hotbar.4 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 5 run item replace entity @s hotbar.5 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 6 run item replace entity @s hotbar.6 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 7 run item replace entity @s hotbar.7 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 8 run item replace entity @s hotbar.8 with lingering_potion{smoke:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787}

execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 0 run item modify entity @s hotbar.0 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 1 run item modify entity @s hotbar.1 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 2 run item modify entity @s hotbar.2 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 3 run item modify entity @s hotbar.3 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 4 run item modify entity @s hotbar.4 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 5 run item modify entity @s hotbar.5 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 6 run item modify entity @s hotbar.6 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 7 run item modify entity @s hotbar.7 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 8 run item modify entity @s hotbar.8 roguelike:character/assassin/yangsim

scoreboard players reset .where as_smoke