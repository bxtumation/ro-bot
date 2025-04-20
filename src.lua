local anan=game:GetService("Players")

local main_account = _G.robot_main -- put your main account here
local bot1 = _G.robot_1 -- bot 1
local bot2 = _G.robot_2 -- bot 2


-- get from players
local mainacc = anan:FindFirstChild(main_account)
local bot1 = anan:FindFirstChild(bot1)
local bot2 = anan:FindFirstChild(bot2)

if anan.LocalPlayer.Name == main_account then
-- ignore refreshing from main acc
else
    while true do
        task.wait(0.01) -- refreshing timeout
        if mainacc and bot1 and bot2 then
            local uzaklikpapazi = 6 -- distance between bots (studs)
            local posGinger = mainacc.Character.HumanoidRootPart.Position
            local gingerkonunm = mainacc.Character.HumanoidRootPart.CFrame
            local bakisaci =gingerkonunm.LookVector
            local rightsags = posGinger+(gingerkonunm.RightVector*uzaklikpapazi)
            bot1.Character:SetPrimaryPartCFrame(CFrame.new(rightsags,rightsags+bakisaci))
            local lefetlepapaz = posGinger-(gingerkonunm.RightVector*uzaklikpapazi)
            bot2.Character:SetPrimaryPartCFrame(CFrame.new(lefetlepapaz,lefetlepapaz+bakisaci))
        end
    end
end
