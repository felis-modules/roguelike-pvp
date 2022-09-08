
execute if score .stat RP_DMG_PARSE matches 1 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_sl_atkdmg 10
execute if score .stat RP_DMG_PARSE matches 2 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_pl_atkdmg 10
execute if score .stat RP_DMG_PARSE matches 3 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_mc_atkdmg 10
# execute if score .stat RP_DMG_PARSE matches 4 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_as_atkdmg1 10
execute if score .stat RP_DMG_PARSE matches 5 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_as_atkdmg2 10

## .stat 이 1이상인 경우는 어쨌건 무기로 때린 경우이므로 킬로그에 기록을 한다.
execute if score .stat RP_DMG_PARSE matches 1.. run scoreboard players set @a[scores={RP_DMG_PARSE=1}] cd_attacker 1
execute if entity @a[scores={cd_attacker=1,sl_dmg_half=1..,sl_dark_rune=0}] run scoreboard players remove @s cd_dmg 70
execute as @a[scores={cd_attacker=1,sl_dmg_half=1..,sl_dark_rune=0}] run scoreboard players set @s sl_dmg_half 0
execute if entity @a[scores={cd_attacker=1,sl_dark_rune=1..}] run scoreboard players remove @s cd_dmg 30
execute if entity @a[tag=sneak,scores={cd_attacker=1}] run scoreboard players add @s cd_dmg 40

# say hi in player_hurt