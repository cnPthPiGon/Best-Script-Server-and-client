-- Made By Rixer95-x2 In Youtube
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mt = getrawmetatable(game)
local old = {}

setreadonly(mt, false)

old.__namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local m = getnamecallmethod():lower()
    if m:find("kick") or m:find("ban") or m:find("shutdown") or m:find("teleport") or m:find("punish") or m:find("crash") or m:find("leave") or m:find("disconnect") or m:find("expel") or m:find("removeplayer") or m:find("forceleave") or m:find("moderation") or m:find("adminkick") or m:find("serverkick") then
        return
    end
    if (m == "destroy" or m == "remove" or m == "removeasync" or m == "destroyallchildren" or m == "clearallchildren" or m == "breakjoints" or m == "explode" or m == "kill") and (self == lp or self == lp.Character or self == lp.PlayerGui or self == lp.PlayerScripts or self == lp.Backpack or self == lp.CharacterAppearance or self == lp.CharacterAppearanceLoaded or self.Parent == lp or self:FindFirstAncestorWhichIsA("Player") == lp or self:FindFirstAncestor("Players") == lp) then
        return
    end
    if (m == "fireserver" or m == "invokeserver" or m == "fireserverasync" or m == "invokeserverasync") then
        local n = tostring(self):lower()
        if n:find("kick") or n:find("ban") or n:find("shutdown") or n:find("teleport") or n:find("punish") or n:find("crash") or n:find("leave") or n:find("disconnect") or n:find("expel") or n:find("removeplayer") or n:find("forceleave") or n:find("moderation") or n:find("admin") or n:find("exploit") or n:find("cheat") or n:find("serverkick") or n:find("anticheat") or n:find("punishment") then
            return
        end
    end
    return old.__namecall(self, ...)
end)

old.__index = mt.__index
mt.__index = newcclosure(function(self, k)
    local lk = k:lower()
    if self == lp and (lk:find("kick") or lk:find("ban") or lk:find("shutdown") or lk:find("teleport") or lk:find("punish") or lk:find("crash") or lk:find("leave") or lk:find("disconnect") or lk:find("destroy") or lk:find("remove") or lk:find("expel") or lk:find("moderation")) then
        return function() end
    end
    if (self == lp.Character or self == lp or self.Parent == lp or self:FindFirstAncestorWhichIsA("Player") == lp) and (lk:find("breakjoints") or lk:find("destroy") or lk:find("remove") or lk:find("explode") or lk:find("kill")) then
        return function() end
    end
    return old.__index(self, k)
end)

old.__newindex = mt.__newindex
mt.__newindex = newcclosure(function(self, k, v)
    local lk = k:lower()
    if self == lp and (lk:find("kick") or lk:find("ban") or lk:find("shutdown") or lk:find("teleport") or lk:find("punish") or lk:find("crash") or lk:find("leave") or lk:find("disconnect") or lk:find("expel") or (lk == "parent" and v == nil)) then
        return
    end
    if (self == lp.Character or self == lp) and (lk == "parent" and v == nil) then
        return
    end
    return old.__newindex(self, k, v)
end)

old.__tostring = mt.__tostring
mt.__tostring = newcclosure(function(self)
    if self == lp or self == lp.Character or self.Parent == lp or self:FindFirstAncestorWhichIsA("Player") == lp then
        return "Player"
    end
    return old.__tostring(self)
end)

old.__len = mt.__len
mt.__len = newcclosure(function(self)
    if self == lp or self == lp.Character or self.Parent == lp or self:FindFirstAncestorWhichIsA("Player") == lp then
        return math.huge
    end
    return old.__len and old.__len(self) or #self
end)

old.__call = mt.__call
mt.__call = newcclosure(function(self, ...)
    if self == lp.Kick or self == lp.Ban or self == lp.Destroy or self == lp.Shutdown or self == lp.Teleport or self == lp.Punish or self == lp.Expel then
        return
    end
    return old.__call and old.__call(self, ...) or self(...)
end)

setreadonly(mt, true)

if hookfunction then
    hookfunction(lp.Kick, function() end)
    hookfunction(lp.Ban, function() end)
    if lp.Destroy then hookfunction(lp.Destroy, function() end) end
    if lp.Shutdown then hookfunction(lp.Shutdown, function() end) end
    if lp.Teleport then hookfunction(lp.Teleport, function() end) end
    if lp.Punish then hookfunction(lp.Punish, function() end) end
end

lp.Kick = function() end
lp.Ban = function() end
if lp.Destroy then lp.Destroy = function() end end
if lp.Shutdown then lp.Shutdown = function() end end
if lp.Teleport then lp.Teleport = function() end end
if lp.Punish then lp.Punish = function() end end
