
scoreboard players set @s settier 0

execute if score .toggle mp_elo matches 0 run tag @s add tierchanged
execute if entity @s[tag=tierchanged] run scoreboard players set .toggle mp_elo 1
execute if entity @s[tag=!tierchanged] run scoreboard players set .toggle mp_elo 0 

execute if entity @s[tag=tierchanged] as @a at @s run playsound minecraft:entity.player.levelup master @a
execute if entity @s[tag=tierchanged] run tellraw @a {"text":"[클래스 PVP] 경쟁 모드가 켜졌습니다!","color":"gray","bold":false,"italic":false}

execute unless entity @s[tag=tierchanged] run tellraw @a {"text":"[클래스 PVP] 경쟁 모드가 꺼졌습니다.","color":"gray","bold":false,"italic":false}

tag @s remove tierchanged
scoreboard players enable @s settier