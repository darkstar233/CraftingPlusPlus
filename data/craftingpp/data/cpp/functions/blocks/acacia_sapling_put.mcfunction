data modify storage cpp:blocks Item.Count set value 1b
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants"]}
execute as @e[type=armor_stand,tag=cpp_plants,distance=..0.1,limit=1] run function cpp:blocks/acacia_sapling_tag
