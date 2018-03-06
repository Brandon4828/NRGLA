--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_STALKER = DarkRP.createJob("S.T.A.L.K.E.R.", {
    color = Color(25, 25, 170, 255),
    model = {"models/stalkertnb/sunrise_lone.mdl", "models/stalkertnb/exo_lone.mdl"},
    description = [[You are a generic stalker roaming the zone.]],
    weapons = {},
    command = "stalker",
    max = 0,
    salary = 25,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "S.T.A.L.K.E.R.S",
})

TEAM_GUNMANUFACTURER = DarkRP.createJob("Gun Manufacturer", {
    color = Color(25, 25, 170, 255),
    model = {"models/stalkertnb/beri_seva.mdl"},
    description = [[You manufacture guns in the zone.]],
    weapons = {},
    command = "GM",
    max = 4,
    salary = 15,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "S.T.A.L.K.E.R.S",
})

TEAM_BANDIT = DarkRP.createJob("Bandit", {
    color = Color(25, 25, 170, 255),
    model = {"models/stalkertnb/bandit1.mdl","models/stalkertnb/bandit2.mdl","models/stalkertnb/bandit3.mdl", "models/stalkertnb/bandit4.mdl" },
    description = [[Bandit...]],
    weapons = {"cw_ump45"},
    command = "Bandit",
    max = 4,
    salary = 10,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "S.T.A.L.K.E.R.S",
})

TEAM_BANDIT = DarkRP.createJob("Scavenger", {
    color = Color(25, 25, 170, 255),
    model = {"models/stalkertnb/beri_seva.mdl"},
    description = [[You scavenge and sell stuff you find in the zone.]],
    weapons = {"Lockpick"},
    command = "Scavenger",
    max = 4,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "S.T.A.L.K.E.R.S",
})

TEAM_DOCTOR = DarkRP.createJob("Doctor", {
    color = Color(255, 104, 99, 255),
	-- not sure on the last value if that will matter at all within color
    model = {""},
	-- if anybody could add a model that would be nice
    description = [[Presumably without a license, you are a person who treats other people with shipped in medical supplies.]],
    weapons = {""},
    command = "Doctor",
    max = 2,
    salary = 30,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "S.T.A.L.K.E.R.S",
})

TEAM_ENGINEER = DarkRP.createJob("Engineer", {
    color = Color(125, 166, 120, 255),
	-- not sure on the last value if that will matter at all within color
    model = {""},
	-- if anybody could add a model that would be nice
    description = [[You are a person advanced in the field of engineering. You can sell things such as mines and turrets.]],
    weapons = {""},
    command = "Engineer",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "S.T.A.L.K.E.R.S",
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_STALKER
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
