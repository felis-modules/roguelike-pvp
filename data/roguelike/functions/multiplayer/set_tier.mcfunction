scoreboard players set @a[scores={mp_elo=..0}] mp_elo 0

execute as @a[scores={mp_elo=0..200}] run team join rp_mp_novice
execute as @a[scores={mp_elo=200..600}] run team join rp_mp_silver

execute as @a[scores={mp_elo=600..1200}] run team join rp_mp_gold
execute as @a[scores={mp_elo=1200..}] run team join rp_mp_platinum