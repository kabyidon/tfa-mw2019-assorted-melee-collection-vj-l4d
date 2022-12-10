SWEP.Base = "tfa_kabyi_melee_base"
DEFINE_BASECLASS(SWEP.Base)
SWEP.Category = "TFA MW2019 Melees Kabyi"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Type_Displayed = "Medium Blunt Weapon"
SWEP.Author = "Olli, Fox, Mav"
SWEP.Purpose = "Lethal sporting equipment. Lightweight bat with a cork center. Swing for the fences to knock your enemies out of the park."
SWEP.Slot = 0
SWEP.PrintName = "Wooden Bat"
SWEP.DrawCrosshair = true

--[Model]--
SWEP.ViewModel = "models/weapons/tfa_l4d_mw2019/melee/c_wood_bat.mdl"
SWEP.ViewModelFOV = 70
SWEP.WorldModel = "models/weapons/tfa_l4d_mw2019/melee/w_wood_bat.mdl"
SWEP.HoldType = "melee"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 1

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4.5,
        Right = 1,
        Forward = 4,
        },
        Ang = {
		Up = 90,
        Right = -5,
        Forward = -180
        },
		Scale = 1
}

--[Gun Related]--
SWEP.Primary.Sound = Sound("weapon_mw2019_wood_bat.swing_miss")
SWEP.Primary.Sound_Hit = Sound("weapon_mw2019_wood_bat.swing_world")
SWEP.Primary.Sound_HitFlesh = Sound("weapon_mw2019_wood_bat.swing_flesh")
SWEP.Primary.DamageType = bit.bor(DMG_CLUB)
SWEP.Primary.RPM = 100
SWEP.Primary.Damage = 50
SWEP.Primary.MaxCombo = 0
SWEP.Secondary.Damage = 90
SWEP.Secondary.MaxCombo = 0

--SWEP.Primary.Automatic = false
--SWEP.Secondary.Automatic = false

--[Traces]--
SWEP.Primary.Attacks = {
	{
		["act"] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 50, -- Trace distance
		["src"] = Vector(0 -1, -30), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(0, 10, 30), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Primary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 12 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.9, --time before next attack
		["hull"] = 1, --Hullsize
	},
	{
		["act"] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 50, -- Trace distance
		["src"] = Vector(45 -1, 30), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(-45, 19, -30), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Primary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 12 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.9, --time before next attack
		["hull"] = 1, --Hullsize
	},
	{
		["act"] = ACT_VM_SWINGHARD, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 50, -- Trace distance
		["src"] = Vector(0 -1, -30), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(0, 10, 30), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Primary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 12 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.9, --time before next attack
		["hull"] = 1, --Hullsize
	},
}
SWEP.Secondary.Attacks = {
	{
		["act"] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 50, -- Trace distance
		["src"] = Vector(45 -1, 30), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(0, 10, -35), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Secondary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 16 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 1.2, --time before next attack
		["hull"] = 1, --Hullsize
	},
}

--[Stuff]--
SWEP.ImpactDecal = "ManhackCut"
SWEP.InspectPos = Vector(-0.8, 8, 2)
SWEP.InspectAng = Vector(-13, 30, 18)

SWEP.Secondary.CanBash            = true -- set to false to disable bashing
SWEP.Secondary.BashDamage         = 25 -- Melee bash damage
SWEP.Secondary.BashSound          = "TFA.Bash" -- Soundscript name for bash swing sound
SWEP.Secondary.BashHitSound       = "TFA.BashWall" -- Soundscript name for non-flesh hit sound
SWEP.Secondary.BashHitSound_Flesh = "TFA.BashFlesh" -- Soundscript name for flesh hit sound
SWEP.Secondary.BashLength         = 70 -- Length of bash melee trace in units
SWEP.Secondary.BashDelay          = 0.2 -- Delay (in seconds) from bash start to bash attack trace
SWEP.Secondary.BashDamageType     = DMG_CLUB -- Damage type (DMG_ enum value)
SWEP.Secondary.BashEnd            = 20 / 20 -- Bash end time (in seconds), defaults to animation end if undefined
SWEP.Secondary.BashInterrupt      = false -- Bash attack interrupts everything (reload, draw, whatever)

--SWEP.AltAttack = false
SWEP.AllowSprintAttack = true

--[Tables]--
SWEP.SequenceRateOverride = {
	[ACT_VM_HITCENTER] = 20 / 30,
}

SWEP.EventTable = {
	["deploy"] = {
		{time = 1 / 30, type = "sound", value = "weapon_mw2019_wood_bat.draw"},
	},
}

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only