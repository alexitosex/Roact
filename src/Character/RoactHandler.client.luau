local ReplicatedStorage = game:GetService('ReplicatedStorage')
local TweenService = game:GetService('TweenService')

local Players = game:GetService("Players")
local Player = game.Players.LocalPlayer

local Sounds = ReplicatedStorage.Sounds

local TweenLoad
local elementRender
local handleMount
local clone
local Camera
local Opening
local completedmabro
local Menu4
local Opening2

local Roact = require(ReplicatedStorage.Libreries.Roact)

local AppMenu = Roact.Component:extend('App')
local MenuIngameApp = Roact.Component:extend('Menuingame')
local MenuOpen = Roact.Component:extend('MenuOpen')

function AppMenu:init()
    self.Visibility, self.UpdateVisibility = Roact.createBinding
end

function PlayerJoin()
    Player.PlayerGui:WaitForChild('Menu').tristeMenu.Visible = false
	Camera = game.Workspace.CurrentCamera
	Camera.CameraType = Enum.CameraType.Scriptable
    clone = ReplicatedStorage.Cache.intro:Clone()
    clone.Parent = workspace
    Camera.CFrame = CFrame.new(Vector3.new(-46.442, -53.6, 72.837), clone.cam.Position) 
    task.wait()
    Player:SetAttribute('Joined', true)
	clone.ghostriley12233:WaitForChild('Humanoid'):LoadAnimation(ReplicatedStorage:WaitForChild('Animations').anim):Play()
 end

function AppMenu:render()
    return Roact.createElement('ScreenGui',{IgnoreGuiInset = true},{
        Play = Roact.createElement('ImageLabel', {
          AnchorPoint = Vector2.new(.5,.5),
          Size = UDim2.fromScale(.4,.5),
          Position = UDim2.fromScale(.5,.7),
          BackgroundTransparency = 1,
          Image = 'rbxassetid://16433866732',
        },{
            InteractivePlay = Roact.createElement('Frame',{
                BackgroundTransparency = 1,
                AnchorPoint = Vector2.new(.5,.5),
                Size = UDim2.fromScale(.3,.15),
                Position = UDim2.fromScale(.52,.48),
                [Roact.Event.MouseEnter] = function(simismo)
                    Sounds['Menu Select 1']:Play()
                    TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.43, .52)}):Play()
                end,
                [Roact.Event.MouseLeave] = function(simismo)
                    TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.4,.5)}):Play()
                   
                end,
                [Roact.Event.InputBegan] = function(simismo, input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1--[[or Enum.UserInputType.Touch]] then
                    Player.PlayerGui:WaitForChild('Menu').tristeMenu.Visible = false     
                        elementRender = Roact.createElement('ScreenGui',{IgnoreGuiInset = true},{
                            framesote = Roact.createElement('Frame',{
                                AnchorPoint = Vector2.new(.5,.5),
                                Size = UDim2.fromScale(-0,1),
                                Position = UDim2.fromScale(1,.5),
                                ZIndex = 10000,
                                BackgroundColor3 = Color3.fromHex('3d3d3d')
                            })
                        })
                       
                        Roact.mount(elementRender, Player.PlayerGui, 'Load')
                       if Player.PlayerGui:WaitForChild('Load').framesote then
                       TweenLoad = TweenService:Create(Player.PlayerGui:WaitForChild('Load').framesote, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(4,1)})
                       TweenLoad:Play()
                       TweenLoad.Completed:Connect(function()
                        Player.PlayerGui:WaitForChild('Menu').tristeMenu.Visible = false
                        Player.PlayerGui:WaitForChild('Menu').tristeMenu.Visible = true
                       completedmabro = TweenService:Create(Player.PlayerGui:WaitForChild('Load').framesote, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(0,1)})
                       completedmabro:Play()
                       completedmabro.Completed:Connect(function()
                        Player.PlayerGui:WaitForChild('Load'):Destroy()
                       end)
                       end)
                       task.wait()
                       simismo:Destroy()
                       end
                       
                        task.wait(3)
                        if clone then
                            clone:Destroy()
                        end
                        Roact.unmount(handleMount)
                        Camera.CameraType = Enum.CameraType.Custom
                        
                    end
                end
            })
        }),
        Options = Roact.createElement('ImageLabel',{
            AnchorPoint = Vector2.new(.5,.5),
            Size = UDim2.fromScale(.4,.55),
            Position = UDim2.fromScale(.5,.8),
            BackgroundTransparency = 1,
            Image = 'rbxassetid://16433971482'
        },{
            InteractiveOptions = Roact.createElement('Frame',{
                BackgroundTransparency = 1,
                AnchorPoint = Vector2.new(.5,.5),
                Size = UDim2.fromScale(.3,.15),
                Position = UDim2.fromScale(.52,.48),
                [Roact.Event.MouseEnter] = function(simismo)
                    Sounds['Menu Select 1']:Play()
                    TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.43, .57)}):Play()
                end,
                [Roact.Event.MouseLeave] = function(simismo)
                    TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.4,.55)}):Play()
                end,
                [Roact.Event.InputBegan] = function(simismo, input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if Player:GetAttribute('Open') == false then
                            Sounds.button:Play()
                             Menu4 = Roact.createElement(MenuOpen)
                            Roact.mount(Menu4, Player.PlayerGui, 'Menuopen')
                            Opening2 = TweenService:Create(Player.PlayerGui.Menuopen.MenuOpenFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.5, 1)})
                            Opening2:Play()
                            task.wait()
                            Player:SetAttribute('Created', true)
                            Player:SetAttribute('Open', true)
                        else
                            Sounds.button:Play()
                            Opening = TweenService:Create(Player.PlayerGui.Menuopen.MenuOpenFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(0, 0)})
                            Opening:Play()
                            Opening.Completed:Connect(function()
                                Player.PlayerGui:WaitForChild('Menuopen'):Destroy()
                            end)
                            Player:SetAttribute('Open', false)
                        end
                    end
                end
            })
        }),
        Exit = Roact.createElement('ImageLabel',{
            AnchorPoint = Vector2.new(.5,.5),
            Size = UDim2.fromScale(.4,.55),
            Position = UDim2.fromScale(.5,.9),
            BackgroundTransparency = 1,
            Image = 'rbxassetid://16434063966'
        },{
            InteractiveExit = Roact.createElement('Frame',{
                BackgroundTransparency = 1,
                AnchorPoint = Vector2.new(.5,.5),
                Size = UDim2.fromScale(.3,.15),
                Position = UDim2.fromScale(.52,.48),
                [Roact.Event.MouseEnter] = function(simismo)
                    Sounds['Menu Select 1']:Play()
                    TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.43, .57)}):Play()
                end,
                [Roact.Event.MouseLeave] = function(simismo)
                    TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.4,.55)}):Play()
                end,
                [Roact.Event.InputBegan] = function(simismo, input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Player:Kick('You leave')
                    end
                end 
            })
        })
    })
end

function MenuOpen:render()
    return Roact.createElement('ScreenGui',{},{
        MenuOpenFrame = Roact.createElement('ImageLabel', {
            Image = 'rbxassetid://16443394254',
            AnchorPoint = Vector2.new(.5,.5),
            Size = UDim2.fromScale(0,0),
            Position = UDim2.fromScale(.5,.5),
            BackgroundTransparency = 1
        })
    })
end


function MenuIngameApp:render()
    return Roact.createElement('ScreenGui', {},{
        tristeMenu = Roact.createElement('ImageLabel',{
            Image = 'rbxassetid://16442764316',
            AnchorPoint = Vector2.new(.5,.5),
            Position = UDim2.fromScale(.07,.4),
            Size = UDim2.fromScale(.4,.6),
            ZIndex = -0,
            Visible = true,
            BackgroundTransparency = 1
         
        },{
          Hitbox = Roact.createElement('Frame',{
            AnchorPoint = Vector2.new(.5,.5),
            Position = UDim2.fromScale(.515, .49),
            Size = UDim2.fromScale(.3,.15),
            ZIndex = 1,
            BackgroundTransparency = 1,
            [Roact.Event.MouseEnter] = function(simismo)
                Sounds['Menu Select 1']:Play()
                TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.44,.63)}):Play()
            end,
            [Roact.Event.InputBegan] = function(simismo, input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if Player:GetAttribute('Open') == false then
                            Sounds.button:Play()
                             Menu4 = Roact.createElement(MenuOpen)
                            Roact.mount(Menu4, Player.PlayerGui, 'Menuopen')
                            Opening2 = TweenService:Create(Player.PlayerGui.Menuopen.MenuOpenFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.5, 1)})
                            Opening2:Play()
                            task.wait()
                            Player:SetAttribute('Created', true)
                            Player:SetAttribute('Open', true)
                        else
                            Sounds.button:Play()
                            Opening = TweenService:Create(Player.PlayerGui.Menuopen.MenuOpenFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(0, 0)})
                            Opening:Play()
                            Opening.Completed:Connect(function()
                                Player.PlayerGui:WaitForChild('Menuopen'):Destroy()
                            end)
                            Player:SetAttribute('Open', false)
                        end
                   end
            end,
            [Roact.Event.MouseLeave] = function(simismo)
                TweenService:Create(simismo.Parent, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromScale(.4,.6)}):Play()
            end,
          })
        })
    })
end

local rendermenu = Roact.createElement(MenuIngameApp)
Roact.mount(rendermenu, Player.PlayerGui, 'Menu')


if Player:GetAttribute('Joined') == false then
    PlayerJoin()
    Sounds['Fantasy Impromptu In C Sharp Op. 66']:Play()
    local element = Roact.createElement(AppMenu)
    handleMount = Roact.mount(element, Player.PlayerGui, 'Menu1')
end
