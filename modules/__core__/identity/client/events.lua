-- Copyright (c) Jérémie N'gadi
--
-- All rights reserved.
--
-- Even if 'All rights reserved' is very clear :
--
--   You shall not use any piece of this software in a commercial product / service
--   You shall not resell this software
--   You shall not provide any facility to install this particular software in a commercial product / service
--   If you redistribute this software, you must link to ORIGINAL repository at https://github.com/ESX-Org/es_extended
--   This copyright should appear in every part of the project code

on("esx:identity:selectIdentity", function(identity)
    module.SelectIdentityAndSpawnCharacter(identity)
end)

on("esx:identity:openRegistration", function()
    -- identity arrives serialized here
    module.OpenMenu(function(identity)
        -- instanciate it before the module instanciation
        module.Init(Identity(identity))
    end)
end)