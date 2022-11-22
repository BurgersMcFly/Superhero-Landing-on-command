Powered by [redscript](https://github.com/jac3km4/redscript), a Swift-like programming language for working with scripts used by REDengine in Cyberpunk 2077.

# Superhero Landing on command

Stops superhero landings from being executed automatically when Berserk is activated. They are instead executed whenever you want them to by pressing a button without even having Berserk installed!

## Mod page on Nexus Mods

https://www.nexusmods.com/cyberpunk2077/mods/6017

## Features

SuperheroLandingOnCommandSprint: Can activate Superhero Landing by pressing the Sprint (Toggle) (default "Left Shift") button while airborne without even having Berserk installed.

![](https://i.imgur.com/caZIyMO.gif)

Default behavior when jumping from really high or from heights that would trigger a death fall with berserk active:

<img src="https://i.imgur.com/rwI1RCz.gif" width="87%" height="87%"/>

In the vanilla game jumping with berserk active will automatically trigger a Superhero Landing. Thing is, there's a hard height limit that if you're over it you're actually in a Death Fall and not a Superhero Fall while still being stuck in the Superhero Landing animation. The animation also locks your camera to it's position/direction before entering it.

Modded behavior when jumping from really high or heights that would trigger a death fall with berserk active/installed or inactive/not installed:

<img src="https://i.imgur.com/GxGdlD1.gif" width="87%" height="87%"/>

Superhero Landing won't activate automatically. You can't activate it if you're higher than the height limit. This way you're not stuck into the animation for that long and you're not stuck into a Death Fall. This also ensures compatibility with other mods like Custom Falls and No Hard Falls.

## Variants 

**SuperheroLandingOnCommandJump**

 Can activate Superhero Landing by pressing the Jump button while airborne without even having Berserk installed. Works only with Reinforced Tendons (the double jumping legs cyberware). It's awkward when you're trying to grab on a ledge and climb it cause you need to remember not to press the Jump button again while airborne lol.


**SuperheroLandingOnCommandSprint**

 Can activate Superhero Landing by pressing the Sprint (Toggle) (default "Left Shift") button while airborne without even having Berserk installed.


**SuperheroLandingOnCommandCrouch**

Can activate Superhero Landing by pressing the Crouch (Toggle) (default "C")  button while airborne without even having Berserk installed. Can still enter a slide from a jump if you use the Crouch (Hold) (default "Left Control") button instead.


**SuperheroLandingOnCommandWalk**

Can activate Superhero Landing by pressing the Toggle Walking (default "G")  button while airborne without even having Berserk installed.


**SuperheroLandingOnCommandQuickAttack**

Can activate Superhero Landing by pressing the Quick Attack (default "Q") button while airborne without even having Berserk installed. Can't do quick melee attacks with ranged weapons while in air because they are replaced with superhero landing.

## Installation

1. Download [redscript](https://www.nexusmods.com/cyberpunk2077/mods/1511).
2. Download the mod and drop its content in your game's folder. 
3. Should look like this: \Cyberpunk 2077\r6\scripts\SuperheroLandingOnCommandSprint.reds

## Notes

You might need [cybercmd](https://www.nexusmods.com/cyberpunk2077/mods/5176) for compatibility with redmod.

Can only use one variant of the mod at a time. The sprint version worked best for me.

Works with keyboard/mouse and gamepad but I think that gamepads are missing the Toggle Walking and Crouch (Hold) button.

## License

[GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)