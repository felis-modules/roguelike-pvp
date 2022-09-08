# pve 에 맞춰서 주변 몹들 전체 스턴 디버프
scoreboard players set @s pl_skill_user 1
effect give @s absorption 3 1 true

execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.1 0

# change angry at to him, slow all mobs
execute at @s as @e[type=!player,distance=..25] run function roguelike:character/paladin/get_anger
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"effect",Radius:25f,Duration:3,Color:16514841}

execute store result score @s RP_COOL1 run data get storage roguelike:rp rp_pl_cool1
scoreboard players set @s pl_skill_user 0

tellraw @a [{"text":"[클래스 PVP]","color":"gray","bold":false,"italic":false},{"selector":"@s","color":"gray","bold":true,"italic":false},{"text":"(이)가 마신의 분노를 실현했습니다!","bold":false,"italic":false}]