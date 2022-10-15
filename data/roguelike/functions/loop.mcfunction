
function roguelike:character/loop
function roguelike:commands/loop
function roguelike:multiplayer/loop
function roguelike:armor/loop

# arrow damage process (all arrow damage will have 3 lower damage)
# execute as @e[type=arrow] run function roguelike:arrow_process

# Shield block sound
execute at @a[scores={SHIELD_BLOCKED=1..}] run playsound minecraft:item.shield.block master @a[distance=..30] ~ ~ ~ 1 0.96 0

# custom damage hurt cooltime
scoreboard players remove @e[scores={RP_HURT_COOL=1..}] RP_HURT_COOL 1
scoreboard players remove @a[scores={RP_WEAPON_COOL=1..}] RP_WEAPON_COOL 1

effect give @a[scores={RP_WEAPON_COOL=1..}] mining_fatigue 2 200 true

execute as @a[tag=!slayer,scores={RP_WEAPON_COOL=1..}] run attribute @s generic.attack_damage modifier add 2c52968e-b6de-4331-b72e-1e6c3f234fad "atkcool" -100 add
execute as @a[tag=slayer,scores={RP_WEAPON_COOL=17..}] run attribute @s generic.attack_damage modifier add 2c52968e-b6de-4331-b72e-1e6c3f234fad "atkcool" -100 add

effect clear @a[scores={RP_WEAPON_COOL=0}] mining_fatigue

execute as @a[tag=!slayer,scores={RP_WEAPON_COOL=0}] run attribute @s generic.attack_damage modifier remove 2c52968e-b6de-4331-b72e-1e6c3f234fad
execute as @a[tag=slayer,scores={RP_WEAPON_COOL=..16}] run attribute @s generic.attack_damage modifier remove 2c52968e-b6de-4331-b72e-1e6c3f234fad

# Reset Event Listeners
# THIS PROCEDURE MUST BE DONE FINALLY

scoreboard players set @a RP_DMG_DEALT 0
scoreboard players set @a RP_USED_CBOW 0
scoreboard players set @a RP_USED_CSTICK 0
scoreboard players set @a RP_USED_FSTICK 0
scoreboard players set @a SHIELD_BLOCKED 0
scoreboard players set @a RP_USED_LPOTION 0
scoreboard players set @a RP_USED_PEARL 0
scoreboard players set @a RP_ON_DEATH 0

kill @e[type=arrow,nbt={inGround:1b}]