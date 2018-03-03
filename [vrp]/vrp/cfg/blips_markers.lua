
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-338.71408081054,-1023.0214233398,30.384769439698,407,27,"Caminhoneiro"},  
  ---{415.2883605957,-1652.4112548828,29.291698455811,446,47,"Mecanica"},  
  {707.357238769531,-966.98876953125,30.4128551483154,521,4,"Computador"},
  {1679.049, 2513.711, 45.565,285,4, "Prisao"},
  {1726.0744628906,3256.9333496094,41.195434570312,315,17, "Corrida"},
  {504.47723388672,213.79844665527,102.8959197998,389,17, "Limpador de Piscina"},  -- LIMPADOR DE PISCINA
  -----------------------pescador-------------------------
  {-1053.7222900391,-4322.240234375,2.3005771636963,17,30,"Mar de peixe"},
  {1336.1596679688,4310.626953125,38.014312744141,18,30,"Limpador de peixe"},
  {-1594.3208007813,5192.6240234375,4.3100934028625,19,30,"Restaurante de peixe"},
-----------------------------arma--------------------------------
  {-1111.2841796875, 4937.4052734375, 218.386306762695, 387, 25, "Oficina de Armas"},
  {1539.01794433594, 1704.29174804688, 109.659622192383, 387, 25, "Oficina de Armas"},
  {981.412841796875, -1805.70349121094, 35.48456954956054, 387, 25, "Oficina de Armas"},
  
  {893.67346191406,3607.2319335938,32.824211120605, 77, 4, "Processamento de Leite"},
  {830.19476318359,2147.2534179688,52.293380737305, 382, 53, "Processamento de Diamante"},
  {3334.580078125,5162.70703125,18.316473007202, 387, 47, "Processamento de Ouro"},
  {814.57116699219,1176.7609863281,330.70367431641, 384, 65, "Processamento de Cobre"},
  {253.1393737793,894.65246582031,209.43571472168, 120, 3, "Processamento de Sal"},
  {2342.8767089844,2616.7216796875,46.667598724365, 79, 31, "Processamento de Trigo"}, 
  {1230.6618652344,1855.7913818359,79.234764099121, 77, 4, "Curral de Vacas"},
  {-594.40759277344,2092.2802734375,131.56622314453, 382, 53, "Campo de Diamante"},
  {2947.0209960938,2802.8874511719,41.299701690674, 387, 47, "Campo De Ouro"},
  {-924.85504150391,4835.8149414063,308.70788574219, 384, 65, "Campo De Cobre"},
  {2049.3894042969,4948.2861328125,41.076801300049, 79, 31, "Campo de Trigo"},
  {-1605.7797851563,5258.8530273438,2.0872757434845, 120, 4, "Campo de Sal"},
  {4095.5485839844,4464.8696289063,1.9822434186935, 365, 49, "Pesca Tartatuga"},
  {-119.17678833008,-1486.1040039063,36.98205947876, 480, 49, "Vender Tartaruga"},
  ---------------------------- FAVELAS
  {-699.07946777344,497.31213378906,109.14033508301,88,38,"Favela TCP"},  -- FAVELA AREA RICA   [TCP]
  {101.66985321045,-1937.1624755859,53.304016113281,88,38,"Favela TCA"}, -- FAVELA SAN ANDREAS [TCA]
  {1344.1785888672,-522.73486328125,72.253402709961,88,38,"Favela ADA"},    -- FAVELA DA BR [ADA]
  {1592.7180175781,-1688.1342773438,123.60868835449,88,38,"Favela CV"},     -- FAVELA PETROLEO [CV]
  --- MOTO BOY   980.86254882813,-101.35676574707,74.845138549805
  --- DEPARTAMENTO DE AGUA E ENERGIA >> 717.82122802734,139.28965759277,80.33211517334
  ----------------------------Advogado--------------------
  {-589.49383544922,-706.19000244141,36.27938079834, 76, 38, "Advocacia"},
    ----------------------- Police Stations----------------------
  {425.130, -979.558, 30.711, 60, 26, "Departamento de Policia"},
  {1859.234, 3678.742, 33.690, 60, 26, "Departamento de Policia"},
  ---{-438.862, 6020.768, 31.490, 60, 26, "Departamento de Policia"},
  {94.423263549805,-741.55224609375,45.75581741333,303,40,"Departamento do Bope"},
  {818.221, -1289.883, 26.300, 60, 26, "Departamento de Policia"},
  {1679.049, 2513.711, 45.565, 285, 4, "Prisão"},
  -- ------------------------Hospitals----------------------------
  {1193.8026123047,-1480.7508544922,34.859523773193,61,69,"Hospital"},
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"Academia"},
  {127.48455810547,-1465.8520507813,29.386623382568,383,21,"Moto Boy"},
  {481.14840698242,-1967.7335205078,24.604816436768,89,46,"Carteiro"},
  
  {-233.05868530273,-994.47332763672,29.339559555054,135,1,"Radar"},
  {-217.86488342285,-999.52362060547,29.342378616333,135,1,"Radar"},
  {-195.98153686523,-938.02941894531,29.345603942871,135,1,"Rada"},
  {-211.12518310547,-928.96228027344,29.303554534912,135,1,"Radar"},
  {-272.28414916992,-988.44659423828,31.080606460571,135,1,"Radar"},
  {399.25421142578,-995.35955810547,29.467039108276,135,1,"Radar"},
}
-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
}

return cfg
