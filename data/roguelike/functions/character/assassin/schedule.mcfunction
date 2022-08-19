effect give @a[tag=nuker] strength 3 1 true
effect give @a[tag=nuker] mining_fatigue 3 2 true
effect give @a[tag=nuker] speed 3 0 true
effect give @a[tag=nuker] invisibility 3 0 true
effect give @a[tag=nuker,nbt=!{Inventory:[{id:"minecraft:diamond_helmet",Slot:103b,tag:{hood:1b}}]}] slowness 2 6 true
effect give @a[tag=nuker,nbt=!{Inventory:[{id:"minecraft:diamond_helmet",Slot:103b,tag:{hood:1b}}]}] weakness 2 10 true

scoreboard players set @a[tag=nuker,scores={nu_potion=0}] nuker_skill 0
scoreboard players add @a[tag=nuker,scores={nu_potion=1..}] nuker_skill 1
give @a[scores={nuker_skill=20}] minecraft:lingering_potion{smoke:1b,display:{Name:'{"text":"[Ulti] 연막술","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"액체형 연막을 내뿜는다. 7초동안 시력을 멀게한다.","color":"dark_gray","bold":true,"italic":false}']},CustomPotionEffects:[{Id:15b,Amplifier:2b,Duration:130,ShowParticles:1b}],CustomPotionColor:7237230}
scoreboard players remove @a[tag=nuker,scores={nuker_skill=20}] nu_potion 1
scoreboard players remove @a[tag=nuker,scores={nuker_skill=18},nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{nix:1b}}]}] nu_potion 1
tellraw @a[tag=nuker,scores={nuker_skill=20}] {"text":"[Ulti] Smoke is ready.","color":"blue","bold":true,"italic":false}
scoreboard players set @a[tag=nuker,scores={nuker_skill=20}] nuker_skill 0
scoreboard players set @a[tag=nuker,scores={nuker_skill=18},nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{nix:1b}}]}] nuker_skill 0
scoreboard players set @a[tag=nuker,scores={nu_potion=3..}] nu_potion 2

scoreboard players set @a[tag=nuker,scores={pearl_count=0}] pearl_skill 0
scoreboard players add @a[tag=nuker,scores={pearl_count=1..}] pearl_skill 1
give @a[scores={pearl_skill=20}] ender_pearl{pearl:1b,display:{Name:'{"text":"[Skill] 신출귀몰","color":"gray","bold":true,"italic":false}',Lore:['{"text":"지피지기 백전불패","color":"blue","bold":true,"italic":false}']}}
scoreboard players remove @a[tag=nuker,scores={pearl_skill=20}] pearl_count 1
tellraw @a[tag=nuker,scores={pearl_skill=20}] {"text":"[Skill] Elusive Pearl is ready.","color":"dark_gray","bold":true,"italic":false}
scoreboard players set @a[tag=nuker,scores={pearl_skill=20}] pearl_skill 0
scoreboard players set @a[tag=nuker,scores={pearl_count=5..}] pearl_count 4

scoreboard players set @a[tag=!nuker] nuker_skill 0
scoreboard players set @a[tag=!nuker] pearl_skill 0
scoreboard players set @a[tag=!nuker] nu_potion 0
scoreboard players set @a[tag=!nuker] pearl_count 0