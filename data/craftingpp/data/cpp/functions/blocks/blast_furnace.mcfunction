advancement revoke @s only cpp:blocks/blast_furnace
function cpp:locate/init
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block] at @s if block ~ ~ ~ blast_furnace run tag @s add cpp_locate_block_position
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position] run function cpp:locate/neighbor
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_neighbor] at @s if block ~ ~ ~ blast_furnace run tag @s add cpp_locate_block_position
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block_position,sort=nearest,limit=1] at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_blast_furnace"],HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970000}},{}]}
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
