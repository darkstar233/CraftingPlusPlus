setblock ~ ~ ~ barrel{CustomName:'{"translate":"block.minecraft.petrified_oak_slab"}'}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_blocks","cpp_need_fire","cpp_machine","cpp_barrel","cpp_crafting_machine","cpp_portable_crafting_machine"],Fire:32767s}
loot replace entity @e[type=armor_stand,tag=cpp_portable_crafting_machine,distance=..0.1,limit=1] armor.head 1 loot cpp:crafting_machine
