local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	
	-- POLICIA
	-- COMANDANTE
	if vRP.hasPermission(user_id,"comandantegeral.paycheck") then
		vRP.giveMoney(user_id,435)
		vRPclient._notify(source,"Dia do pagamento: RS435")
	end	
	
	-- CORONEL
	if vRP.hasPermission(user_id,"coronel.paycheck") then
		vRP.giveMoney(user_id,385)
		vRPclient._notify(source,"Dia do pagamento: RS385")
	end	
	-- TENENTE CORONEL
	if vRP.hasPermission(user_id,"tenentecoronel.paycheck") then
		vRP.giveMoney(user_id,385)
		vRPclient._notify(source,"Dia do pagamento: RS385")
	end
	-- MAJOR
	if vRP.hasPermission(user_id,"major.paycheck") then
		vRP.giveMoney(user_id,385)
		vRPclient._notify(source,"Dia do pagamento: RS385")
	end	
	-- CAPITÃO
	if vRP.hasPermission(user_id,"capitao.paycheck") then
		vRP.giveMoney(user_id,385)
		vRPclient._notify(source,"Dia do pagamento: RS385")
	end
		
	-- PRIMEIRO TENENte
	if vRP.hasPermission(user_id,"primeirotenente.paycheck") then
		vRP.giveMoney(user_id,335)
		vRPclient._notify(source,"Dia do pagamento: RS335")
	end	
	-- SEGUNDO TENENTE
	if vRP.hasPermission(user_id,"segundotenente.paycheck") then
		vRP.giveMoney(user_id,335)
		vRPclient._notify(source,"Dia do pagamento: RS335")
	end	
	-- SUB TENENTE
	if vRP.hasPermission(user_id,"subtenente.paycheck") then
		vRP.giveMoney(user_id,335)
		vRPclient._notify(source,"Dia do pagamento: RS335")
	end
	
	-- PRIMEIRO SARGENTO
	if vRP.hasPermission(user_id,"primeirosargento.paycheck") then
		vRP.giveMoney(user_id,300)
		vRPclient._notify(source,"Dia do pagamento: RS300")
	end	
	-- SEGUNDO SARGENTO
	if vRP.hasPermission(user_id,"segundosargento.paycheck") then
		vRP.giveMoney(user_id,300)
		vRPclient._notify(source,"Dia do pagamento: RS300")
	end	
	-- TERCEIRO SARGENTO
	if vRP.hasPermission(user_id,"terceirosargento.paycheck") then
		vRP.giveMoney(user_id,300)
		vRPclient._notify(source,"Dia do pagamento: RS300")
	end	
	
	-- CABO
	if vRP.hasPermission(user_id,"cabo.paycheck") then
		vRP.giveMoney(user_id,235)
		vRPclient._notify(source,"Dia do pagamento: RS235")
	end	
	-- SOLDADO
	if vRP.hasPermission(user_id,"Soldado.paycheck") then
		vRP.giveMoney(user_id,235)
		vRPclient._notify(source,"Dia do pagamento: RS235")
	end	
	-- RECRUTA
	if vRP.hasPermission(user_id,"recruta.paycheck") then
		vRP.giveMoney(user_id,235)
		vRPclient._notify(source,"Dia do pagamento: RS235")
	end	

	
	
	
	
	-- BOMBEIRO
	
		
	-- COMANDANTE
	if vRP.hasPermission(user_id,"bombeirocomandante.paycheck") then
		vRP.giveMoney(user_id,355)
		vRPclient._notify(source,"Dia do pagamento: RS350")
	end
	-- SUBCOMANDANTE
	if vRP.hasPermission(user_id,"bombeirosubccomandante.paycheck") then
		vRP.giveMoney(user_id,355)
		vRPclient._notify(source,"Dia do pagamento: RS355")
	end	
	-- CORONEL
	if vRP.hasPermission(user_id,"bombeirocoronel.paycheck") then
		vRP.giveMoney(user_id,266)
		vRPclient._notify(source,"Dia do pagamento: RS266")
	end
	-- TENENTE CORONEL
	if vRP.hasPermission(user_id,"bombeirotencoronel.paycheck") then
		vRP.giveMoney(user_id,266)
		vRPclient._notify(source,"Dia do pagamento: RS266")
	end
	-- CAPITÃO
	if vRP.hasPermission(user_id,"bombeirocapitao.paycheck") then
		vRP.giveMoney(user_id,266)
		vRPclient._notify(source,"Dia do pagamento: RS266")
	end	
	-- PRIMEIRO SARGENTO
	if vRP.hasPermission(user_id,"bombeiroprimeirosargento.paycheck") then
		vRP.giveMoney(user_id,222)
		vRPclient._notify(source,"Dia do pagamento: RS222")
	end	
	-- CABO
	if vRP.hasPermission(user_id,"bombeirocabo.paycheck") then
		vRP.giveMoney(user_id,222)
		vRPclient._notify(source,"Dia do pagamento: RS222")
	end
	-- SOLDADO
	if vRP.hasPermission(user_id,"bombeirotensoldado.paycheck") then
		vRP.giveMoney(user_id,222)
		vRPclient._notify(source,"Dia do pagamento: RS222")
	end	
	-- RECRUTA
	if vRP.hasPermission(user_id,"bombeirotenrecruta.paycheck") then
		vRP.giveMoney(user_id,222)
		vRPclient._notify(source,"Dia do pagamento: RS222")
	end
	-------- orthes
	if vRP.hasPermission(user_id,"dg.paycheck") then
		vRP.giveMoney(user_id,334)
		vRPclient._notify(source,"Dia do pagamento: RS40")
	end
	if vRP.hasPermission(user_id,"cmdbope.paycheck") then
		vRP.giveMoney(user_id,384)
		vRPclient._notify(source,"Dia do pagamento: RS40")
	end
	if vRP.hasPermission(user_id,"soldadobope.paycheck") then
		vRP.giveMoney(user_id,222)
		vRPclient._notify(source,"Dia do pagamento: RS40")
	end
	
	
	
	
	
	
	
	
	
	-- EMPREGO
	if vRP.hasPermission(user_id,"moto_boy.paycheck") then------bus
		vRP.giveMoney(user_id,55)
		vRPclient._notify(source,"Dia do pagamento: RS6500")
	end
	if vRP.hasPermission(user_id,"taxista.paycheck") then
		vRP.giveMoney(user_id,166)
		vRPclient._notify(source,"Dia do pagamento: RS7000")
	end
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveMoney(user_id,66)
		vRPclient._notify(source,"Dia do pagamento: RS4500")
	end
	if vRP.hasPermission(user_id,"advogado.paycheck") then
		vRP.giveMoney(user_id,100)
		vRPclient._notify(source,"Dia do pagamento: RS7000")
	end
	if vRP.hasPermission(user_id,"lixeiro.paycheck") then
		vRP.giveMoney(user_id,55)
		vRPclient._notify(source,"Dia do pagamento: RS4000")
	end
	if vRP.hasPermission(user_id,"Pescador.paycheck") then
		vRP.giveMoney(user_id,55)
		vRPclient._notify(source,"Dia do pagamento: RS5500")
	end
	if vRP.hasPermission(user_id,"bus.paycheck") then
		vRP.giveMoney(user_id,40)
		vRPclient._notify(source,"Dia do pagamento: RS4500")
	end
	if vRP.hasPermission(user_id,"motoristabancario.paycheck") then
		vRP.giveMoney(user_id,40)
		vRPclient._notify(source,"Dia do pagamento: RS6000")
	end
	
	

	
	
	-- FACÇÕES
	
	
	
	if vRP.hasPermission(user_id,"c.v.paycheckdinheirosujoc") then
		vRP.giveBankDinheirosujo(user_id,470)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:470")
	end
	if vRP.hasPermission(user_id,"t.c.p.paycheckdinheirosujoc") then
		vRP.giveBankDinheirosujo(user_id,470)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:470")
	end
	if vRP.hasPermission(user_id,"a.d.a.paycheckdinheirosujoc") then
		vRP.giveBankDinheirosujo(user_id,470)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:470")
	end
	if vRP.hasPermission(user_id,"t.c.a.paycheckdinheirosujoc") then
		vRP.giveBankDinheirosujo(user_id,470)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:470")
	end
	
	
	if vRP.hasPermission(user_id,"c.v.paycheckdinheirosujob") then
		vRP.giveBankDinheirosujo(user_id,400)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:400")
	end
	if vRP.hasPermission(user_id,"t.c.p.paycheckdinheirosujob") then
		vRP.giveBankDinheirosujo(user_id,400)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:400")
	end
	if vRP.hasPermission(user_id,"a.d.a.paycheckdinheirosujob") then
		vRP.giveBankDinheirosujo(user_id,400)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:400")
	end
	if vRP.hasPermission(user_id,"t.c.a.paycheckdinheirosujob") then
		vRP.giveBankDinheirosujo(user_id,400)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:400")
	end
	
	
	if vRP.hasPermission(user_id,"c.v.paycheckdinheirosujoss") then
		vRP.giveBankDinheirosujo(user_id,350)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:350")
	end
	if vRP.hasPermission(user_id,"t.c.p.paycheckdinheirosujoss") then
		vRP.giveBankDinheirosujo(user_id,350)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:350")
	end
	if vRP.hasPermission(user_id,"t.c.a.paycheckdinheirosujoss") then
		vRP.giveBankDinheirosujo(user_id,350)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:350")
	end
	if vRP.hasPermission(user_id,"a.d.a.paycheckdinheirosujoss") then
		vRP.giveBankDinheirosujo(user_id,350)
		vRPclient._notify(source,"Mano, a favela deu lucro, toma ai sua parte RS:350")
	end
	
	
	
	
	
	
	
	
	
		
	
	
end)

RegisterServerEvent('paycheck:bonus')
AddEventHandler('paycheck:bonus', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.giveMoney(user_id,5)
		vRPclient._notify(source,{"Bolsa familia: $5"})
	end
end)