
local cfg = {}

-- size of the sms history
cfg.sms_history = 15

-- maximum size of an sms
cfg.sms_size = 500

-- duration of a sms position marker (in seconds)
cfg.smspos_duration = 300

-- define phone services
-- blipid, blipcolor (customize alert blip)
-- alert_time (alert blip display duration in seconds)
-- alert_permission (permission required to receive the alert)
-- alert_notify (notification received when an alert is sent)
-- notify (notification when sending an alert)
cfg.services = {
  ["t.c.a"] = {
    blipid = 432,
    blipcolor = 38,
    alert_time = 300, -- 5 minutes
    alert_permission = "tpa.service",
    alert_notify = "~r~Alerta do t.c.a:~n~~s~",
    notify = "~b~Você chamou a t.c.a.",
    answer_notify = "~b~O t.c.a esta vindo."
  },
  ["t.c.p"] = {
    blipid = 432,
    blipcolor = 38,
    alert_time = 300, -- 5 minutes
    alert_permission = "tpc.service",
    alert_notify = "~r~Alerta do t.c.p:~n~~s~",
    notify = "~b~Você chamou a t.c.p.",
    answer_notify = "~b~O t.c.p esta vindo."
  },
    ["c.v"] = {
    blipid = 432,
    blipcolor = 38,
    alert_time = 300, -- 5 minutes
    alert_permission = "cv.service",
    alert_notify = "~r~Alerta do c.v:~n~~s~",
    notify = "~b~Você chamou 0 c.v.",
    answer_notify = "~b~O c.v esta vindo."
  },
    ["a.d.a"] = {
    blipid = 432,
    blipcolor = 38,
    alert_time = 300, -- 5 minutes
    alert_permission = "ada.service",
    alert_notify = "~r~Alerta do a.d.a:~n~~s~",
    notify = "~b~Você chamou o a.d.a.",
    answer_notify = "~b~O a.d.a esta vindo."
  },
  ["policia"] = {
    blipid = 432,
    blipcolor = 38,
    alert_time = 300, -- 5 minutes
    alert_permission = "police.service",
    alert_notify = "~r~Alerta da policia:~n~~s~",
    notify = "~b~Voce chamou o policia o coxinha.",
    answer_notify = "~b~A policia esta vindo espere."
  },
  ["bombeiro"] = {
    blipid = 437,
    blipcolor = 1,
    alert_time = 300, -- 5 minutes
    alert_permission = "emergency.service",
    alert_notify = "~r~bombeiro alerta:~n~~s~",
    notify = "~b~Voce chamou bombeiro.",
    answer_notify = "~b~A bombeiro esta chegando espere."
  },
  ["uber"] = {
    blipid = 432,
    blipcolor = 1,
    alert_time = 300,
    alert_permission = "taxista.service",
    alert_notify = "~y~alerta do uber:~n~~s~",
    notify = "~y~Você chamou uber .",
    answer_notify = "~y~Um uber esta chegando espere."
  },
  ["advogado"] = {
    blipid = 432,
    blipcolor = 1,
    alert_time = 300,
    alert_permission = "advogado.service",
    alert_notify = "~y~alerta de advogado:~n~~s~",
    notify = "~y~Voce chamou o advogado.",
    answer_notify = "~y~0 advogado esta chegando espere."
  },
  ["mecanico"] = {
    blipid = 446,
    blipcolor = 5,
    alert_time = 300,
    alert_permission = "repair.service",
    alert_notify = "~y~Alerta de reparo:~n~~s~",
    notify = "~y~Voce chamou um mecanico.",
    answer_notify = "~y~Um mecanico esta chegando espere."
  }
}

-- define phone announces
-- image: background image for the announce (800x150 px)
-- price: amount to pay to post the announce
-- description (optional)
-- permission (optional): permission required to post the announce
cfg.announces = {
  ["bombeiro"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "https://i.imgur.com/I2LE7e1.jpg",
    price = 0,
    description = "emergencia somente.",
    permission = "em.announce"
  },
  ["admin"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "http://i.imgur.com/kjDVoI6.png",
    price = 0,
    description = "Admin somente.",
    permission = "admin.announce"
  },
  ["ada"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "https://i.imgur.com/cYmZTnX.jpg",
    price = 0,
    description = "Somente para ada, ex: anuncio desejado",
    permission = "ada.announce"
  },
  ["cv"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "https://i.imgur.com/9OU3ihA.jpg",
    price = 0,
    description = "Somente para cv, ex: anuncio desejado",
    permission = "cv.announce"
  },
  ["tca"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "https://i.imgur.com/nWlBjBb.jpg",
    price = 0,
    description = "Somente para tca,ex: anuncio desejado",
    permission = "tca.announce"
  },
  ["tcp"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "https://i.imgur.com/TLB08rd.jpg",
    price = 0,
    description = "Somente para tcp,ex: anuncio desejado",
    permission = "tcp.announce"
  },
  ["policia"] = {
    --image = "nui://vrp_mod/announce_police.png",
    image = "",
    price = 0,
    description = "Somente para bope, ex: anuncio desejado",
    permission = "police.announce"
  },
  ["advogado"] = {
    --image = "nui://vrp_mod/announce_police.png",
    image = "http://i.imgur.com/JZfbbGg.jpg",
    price = 0,
    description = "Somente para advogado, ex: anuncio desejado",
    permission = "advogado.announce"
  },
  ["commercial"] = {
    --image = "nui://vrp_mod/announce_commercial.png",
    image = "http://i.imgur.com/b2O9WMa.png",
    description = "Material comercial (comprar, vender, trabalhar).",
    price = 0
  },
  ["festa"] = {
    --image = "nui://vrp_mod/announce_party.png",
    image = "http://i.imgur.com/OaEnk64.png",
    description = "Organizar uma festa? Deixe todos conhecer o rendez-vous.",
    price = 5000
  }
}

return cfg
