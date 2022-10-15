scoreboard players remove @s as_pearl 1


execute if entity @s[scores={as_pearl=1..}] run function roguelike:character/assassin/pearl/update_counts
execute if entity @s[scores={as_pearl=0}] run item replace entity @s weapon.mainhand with minecraft:slime_ball{invparse:300001,display:{Name:'{"text":"빈 암살자의 엔더 진주","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"전부 다 사용하여 충전을 기다려야 한다.","color":"gray","bold":false,"italic":false}']}}

effect give @s speed 3 1
effect give @s strength 3 0