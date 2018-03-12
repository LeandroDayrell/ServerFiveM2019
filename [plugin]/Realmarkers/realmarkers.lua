--Script by snowQT.

--affiche les markers au spawn du joueur

Citizen.CreateThread(function()
local blips = {
{name="Curral de Vacas", colour=46, scale=1.0, id=368, x=1230.6618652344,y=1855.7913818359,z=79.234764099121}, -- Arrumado
{name="Processamento de Leite", colour=46, scale=1.0, id=368, x=893.67346191406,y=3607.2319335938,z=32.824211120605}, -- Arrumado
-- -------------URANIO
{name="Uranio Colheita", colour=46, scale=1.0, id=368, x=3067.7629394531,y=2219.5422363281,z=2.724246263504}, -- Arrumado
{name="Urario Refinaria", colour=46, scale=1.0, id=368, x=2329.9621582031,y=2571.7009277344,z=46.678863525391}, -- Arrumado
{name="Uranio Transformador", colour=46, scale=1.0, id=368, x=-213.03514099121,y=-1683.5076904297,z=34.850330352783}, -- Arrumado
-- ------------CRACK
{name="Crack Colheita", colour=49, scale=1.0, id=89, x=-1858.0501708984,y=2250.0380859375,z=82.478172302246},----crak
{name="Crack Refinaria", colour=49, scale=1.0, id=89, x=-779.89514160156,y=535.04681396484,z=121.24387359619},-----crak
{name="Crack Tranformador", colour=49, scale=1.0, id=89, x=1667.2595214844,y=-1631.2132568359,z=112.8876953125},-----crak
-- ------------COCAINA
{name="Cocaina Colheita", colour=38, scale=1.0, id=89, x=1917.0928955078,y=5102.0961914063,z=43.194328308105}, -- cocaina
{name="Cocaina Refinaria", colour=38, scale=1.0, id=89, x=1218.8428955078,y=-618.83123779297,z=69.582069396973}, -- cocaina
{name="Cocaina Transformador", colour=38, scale=1.0, id=89, x=1675.4012451172,y=-1935.5599365234,z=114.81266784668}, -- cocaina
-- ------------ECSTASY
{name="Ecstasy Colheita", colour=83, scale=1.0, id=206, x=16.626104354858,y=-1832.2036132813,z=24.769153594971},
{name="Ecstasy Refinaria", colour=83, scale=1.0, id=365, x=-561.68438720703,y=281.64797973633,z=85.676383972168},
{name="Ecstasy Transformador", colour=83, scale=1.0, id=431, x=-914.14428710938,y=750.26470947266,z=182.16152954102},
-- ------------LSD
{name="LSD Extrair", colour=24, scale=1.0, id=445, x=-115.86870574951, y=1908.5133056641, z=197.42163085938},
{name="LSD Processador", colour=24, scale=1.0, id=445, x=1389.6108398438, y=3603.7277832031, z=38.941837310791},
{name="LSD Transformador", colour=24, scale=1.0, id=445, x=-707.59344482422, y=620.65325927734, z=155.2137298584},
------------- --MACONHA
{name="Maconha Processador", colour=25, scale=1.0, id=17, x=1482.2690429688,y=-1738.5200195313,z=90.62540435791},--erva
{name="Maconha Transformador", colour=25, scale=1.0, id=18, x=45.760025024414,y=-1939.0877685547,z=21.589450836182},--erva
{name="Maconha Colheita", colour=2, scale=1.0, id=140, x=2219.1667480469,y=5577.13671875,z=53.843963623047},-- erva
---------------orgao
{name="Roubar Corpos", colour=22, scale=1.0, id=437, x=-1742.0139160156,y=-216.63523864746,z=56.580638885498}, -- Arrumado
{name="Remover Orgaos", colour=22, scale=1.0, id=437, x=248.75984191895,y=-1374.5345458984,z=39.534374237061}, -- Arrumado
{name="Venda de Orgaos", colour=22, scale=1.0, id=437, x=-2033.3133544922,y=-1035.1331787109,z=5.8823466300964}, -- Arrumado

}
--configblips
for _, map in pairs(blips) do
map.blip = AddBlipForCoord(map.x, map.y, map.z)
SetBlipSprite(map.blip, map.id)
SetBlipAsShortRange(map.blip, true)
SetBlipColour(map.blip, map.colour)
SetBlipScale(map.blip, map.scale)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString(map.name)
EndTextCommandSetBlipName(map.blip)
end

end)



