RAND = {}
RAND.C = {}

RAND.compat = {
           partners = (SMODS.Mods['partner'] or {}).can_load or false,
           paperback = (SMODS.Mods['paperback'] or {}).can_load or false
}

if RAND.compat.partners then
SMODS.load_file("Items/partner.lua")()
end

--Paperback Mod atlas
SMODS.Atlas{
    key = "minipaper",
    px = 46,
    py = 58,
    path = "paperback.png"
}


if RAND.compat.paperback then
SMODS.load_file("Items/Paperback.lua")()
end


--Partner Mod atlas
SMODS.Atlas{
    key = "minijoke",
    px = 46,
    py = 58,
    path = "partners.png"
}


SMODS.Atlas({
    key = "modicon",
    path = "modicon.png",
    px = 34,
    py = 34
})
