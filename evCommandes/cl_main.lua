Citizen.CreateThread(function()

    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,83) then
            menu()
        end
    end

end)

function menu()

    local etat=true
    local IndexList=1

    local menuTestNumero2 = RageUI.CreateMenu("evCommandes","Made by evann™")
    local StaffMenu = RageUI.CreateSubMenu(menuTestNumero2, "Staff Menu", nil)

    RageUI.Visible(menuTestNumero2, not RageUI.Visible(menuTestNumero2))
    

    while menuTestNumero2 do
        
        Citizen.Wait(0)

        RageUI.IsVisible(menuTestNumero2,true,true,true,function()

            RageUI.Separator("↓ Interaction ↓")


            RageUI.ButtonWithStyle("Porter", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then    
                    ExecuteCommand('porter')
                end
            end)

            RageUI.ButtonWithStyle("Prendre en otage", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then    
                    ExecuteCommand('takehostage')
                end
            end)

            RageUI.ButtonWithStyle("Donner les clés", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then    
                    ExecuteCommand('clevoiture')
                end
            end)

            RageUI.ButtonWithStyle("Animations Armes", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then  
                    RageUI.CloseAll()  
                    ExecuteCommand('wam')
                end
            end)

            RageUI.ButtonWithStyle("Ouvrir la Radio", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then  
                    RageUI.CloseAll()  
                    ExecuteCommand('Radio')
                end
            end)

            RageUI.ButtonWithStyle("Drogues → Pnj", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then  
                    RageUI.CloseAll()  
                    ExecuteCommand('drugsell')
                end
            end)

            
            RageUI.Separator("~p~↓ Compteur de vitesse ↓")

        
            RageUI.List("Speedometer : ", {"1","2","3"}, IndexList,nil,{},true,{
                onListChange= function(Index,Item)
                    IndexList=Index
                end,
                onSelected = function(Index, Item)
                    if Index==1 then
                        ExecuteCommand('speedoskin default')
                    end
                    if Index==2 then
                        ExecuteCommand('speedoskin id6')
                    end
                    if Index==3 then
                        ExecuteCommand('speedoskin id7')
                    end

                end
            })

            RageUI.Separator("~g~↓ HUD ↓")

            RageUI.Checkbox("Afficher/Cacher HUD",nil, etat,{},function(Hovered,Ative,Selected,Checked)
                if Selected then
                    etat = Checked
                    if etat==true then
                        ExecuteCommand('hud off')
                    else
                        ExecuteCommand('hud on')
                    end
                end
            end)

            RageUI.Separator("~y~↓ Vip ↓")

            RageUI.ButtonWithStyle("Menu Vip", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then  
                    RageUI.CloseAll()  
                    ExecuteCommand('vip')
                end
            end)

            RageUI.Separator("~r~↓ Staff ↓")


           --- RageUI.ButtonWithStyle("Menu Staff", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                ---if Selected then    
                    ---print("Staff menu ouvert")
                    ---RageUI.Visible(StaffMenu, not RageUI.Visible(StaffMenu))
                    ---while StaffMenu do
                        ---Citizen.Wait(0)

                        ---RageUI.IsVisible(StaffMenu,true,true,true,function()

                            ---RageUI.ButtonWithStyle("Meteo", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                ---if Selected then 
                                    ---RageUI.CloseAll() 
                                    ---ExecuteCommand('meteo')
                                ---end
                            ---end)

                            ---RageUI.ButtonWithStyle("Wipe", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                ---if Selected then  
                                    ---RageUI.CloseAll()  
                                    ---ExecuteCommand('wipe')
                                ---end
                            ---end)

                            ---RageUI.ButtonWithStyle("Tp Maze Bank", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                ---if Selected then    
                                    ---ExecuteCommand('tp -75,111 -819.406 326.175')
                                ---end
                            ---end)


                        ---end, function()
                        ---end)  
                    ---end


                ---end
            ---end)
        
        end, function()
        end)

        if not RageUI.Visible(menuTestNumero2) then
            menuTestNumero2=RMenu:DeleteType("evCommandes", true)
        end

    end

end