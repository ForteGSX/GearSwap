--Place for your settings and custom functions that are meant to affect all of your jobs and characters.
--Affects delay for Miniqueue and auto modes.
latency = .25
--If this is set to true it will prevent you from casting shadows when you have more up than that spell would generate.
conserveshadows = false

--Storage related settings.
consumable_bag = 'satchel'
currency_bag = 'case'

--Options for automation.
state.AdjustTargets			= M(true, 'Automatically Adjust Targets') --Set this to false if you don't want to swap illegal targets for <st> commands.
state.ReEquip				= M(true, 'ReEquip Mode')		 --Set this to false if you don't want to equip your current Weapon set when you aren't wearing the correct weapons as per your weapons state.
state.AutoArts				= M(true, 'AutoArts') 		 --Set this to false if you don't want to automatically try to keep up Solace/Arts.
state.AutoLockstyle			= M(true, 'AutoLockstyle Mode') --Set this to false if you don't want gearswap to automatically lockstyle on load and weapon change.
state.CancelStoneskin		= M(true, 'Cancel Stone Skin') --Set this to false if you don't want to automatically cancel stoneskin when you're slept.
state.SkipProcWeapons		= M(true, 'Skip Proc Weapons') --Set this to false if you want to display weapon sets fulltime rather than just Aby/Voidwatch.
state.NotifyBuffs			= M(false, 'Notify Buffs') 	 --Set this to true if you want to notify your party when you recieve a specific buff/debuff. (List Below)
NotifyBuffs = S{'doom','petrification'}

--[[Binds you may want to change.
	Bind special characters.
	@ = Windows Key
	% = Works only when text bar not up.
	$ = Works only when text bar is up.
	^ = Control Key
	! = Alt Key
	~ = Shift Key
	# = Apps Key
]]
send_command('bind !@^f7 gs c toggle AutoWSMode') --Turns auto-ws mode on and off.
send_command('bind !^f7 gs c toggle AutoFoodMode') --Turns auto-food mode on and off.
send_command('bind f7 gs c cycle Weapons') --Cycle through weapons sets.
send_command('bind @f7 gs c cycleback Weapons') --Cycle backwards through weapons
send_command('bind ^f7 gs c cycle WeaponSets') --Cycle backwards through weapons
send_command('bind @f8 gs c toggle AutoNukeMode') --Turns auto-nuke mode on and off.
send_command('bind ^f8 gs c toggle AutoStunMode') --Turns auto-stun mode off and on.
send_command('bind !f8 gs c toggle AutoDefenseMode') --Turns auto-defense mode off and on.
send_command('bind ^@!f8 gs c toggle AutoTrustMode') --Summons trusts automatically.
send_command('bind @pause gs c cycle AutoBuffMode') --Automatically keeps certain buffs up, job-dependant.
send_command('bind @scrolllock gs c cycle Passive') --Changes offense settings such as accuracy.
send_command('bind f9 gs c cycle OffenseMode') --Changes offense settings such as accuracy.
send_command('bind ^f9 gs c cycle HybridMode') --Changes defense settings for melee such as PDT.
send_command('bind @f9 gs c cycle RangedMode') --Changes ranged offense settings such as accuracy.
send_command('bind !f9 gs c cycle WeaponskillMode') --Changes weaponskill offense settings such as accuracy.
send_command('bind f10 gs c set DefenseMode Physical') --Turns your physical defense set on.
send_command('bind ^f10 gs c cycle PhysicalDefenseMode') --Changes your physical defense set.
send_command('bind !f10 gs c toggle Kiting') --Keeps your kiting gear on..
send_command('bind f11 gs c set DefenseMode Magical') --Turns your magical defense set on.
send_command('bind ^f11 gs c cycle MagicalDefenseMode') --Changes your magical defense set.
send_command('bind @f11 gs c cycle CastingMode') --Changes your castingmode options such as magic accuracy.
send_command('bind !f11 gs c cycle ExtraMeleeMode') --Adds another set layered on top of your engaged set.
send_command('bind ^f12 gs c cycle ResistDefenseMode') --Changes your resist defense set.
send_command('bind f12 gs c set DefenseMode Resist') --Turns your resist defense set on.
send_command('bind @f12 gs c cycle IdleMode') --Changes your idle mode options such as refresh.
send_command('bind !f12 gs c reset DefenseMode') --Turns your defensive mode off.
send_command('bind pause gs c update user') --Runs a quick check to make sure you have the right gear on and checks variables.
send_command('bind ^@!backspace gs c buffup') --Buffup macro because buffs are love.
send_command('bind %] input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind ^] input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind !] input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind @] input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind %End input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind ^End input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind !End input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind @End input /macro set 10') --Job Specific Macro Page, buffs?
send_command('bind %[ gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind ^[ gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind ![ gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind @[ gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind %Home gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind ^Home gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind !Home gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind @Home gs c macropage') --Job Specific Macro Page, buffs?
send_command('bind ^space gs c smartstun') --Stun!
windower.chat.input:schedule(5,'/cm linkshell2')

-- The following can be uncommented to add text counts after using items.
-- item_bags = {'Satchel','Inventory','Sack','Case'}
-- function user_aftercast(spell, spellMap, eventArgs)
	-- if spell.action_type == 'Item' then
		-- local remaining = -1
		
		-- for i, bag in ipairs(item_bags) do
			-- if player[bag][spell.english] then
				-- remaining = remaining + player[bag][spell.english]['count']
			-- end
		-- end
		
		-- if remaining > 0 then
			-- add_to_chat(217, 'Used Item ['..spell.english..'] Remaining In Inventory: ['..tostring(remaining)..']')
		-- else
			-- add_to_chat(123, spell.english..' used. None remaining!')
		-- end
	-- end
-- end
