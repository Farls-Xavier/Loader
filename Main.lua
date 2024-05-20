local MarketPlaceService = game:GetService("MarketplaceService")

local id = game.PlaceId

local Ids = {
    ["❓ LUCKY BLOCKS Battlegrounds"] = 662417684,
}

function GameIsSupported()
    warn("Game is supported("..MarketPlaceService:GetProductInfo(game.PlaceId)["Name"]"). Loading script")
end

function GameIsNotSupported()
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Place is not supported",
        Text = "Place is not supported. Loading Universal script",
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/UniversalScript/main/Main.lua"))()
end

for _,v in pairs(Ids) do
    if v ~= id then
        GameIsNotSupported()
    else
        if id == 662417684 then
            GameIsSupported()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/LuckyBlocks/main/Main.lua"))()
        end
    end
end

--loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/LuckyBlocks/main/Main.lua"))()
