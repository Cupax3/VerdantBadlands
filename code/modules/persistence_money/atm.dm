/obj/machinery/money_machine
	name = "automated teller machine"
	icon = 'icons/obj/machines/atm.dmi'
	icon_state = "atm"
	desc = "Gives you money. Takes your money."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	anchored = TRUE

/obj/machinery/money_machine/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)

	if(!ui)
		ui = new(user, src, "ATM")
		ui.open()

/obj/machinery/money_machine/ui_data(mob/user)
	var/list/data = list()
	data["debug"] = "funny words"
	return data

/obj/machinery/money_machine/ui_act(action, params)
	. = ..()
	if(.)
		return
	var/char_id = "1"
	var/type_id = "1"
	var/round_id = "1"

	switch(action)
		if("create_account")
			// TODO: Check against ACCOUNT_LIMIT
			// TODO: Check if character exists -Redundant if character logged in?
			var/datum/db_query/add_account = SSdbcore.NewQuery(
				"INSERT INTO [format_table_name("bank_account")] (creator_characterID, balance, address) \
				VALUES (:char_id, :bal, MD5(CONCAT(LAST_INSERT_ID()+1, \
				(SELECT name FROM `[format_table_name("character")]` WHERE characterID = :char_id)))) \
				RETURNING [format_table_name("bank_account")].bank_accountID",
				list("char_id" = char_id, "bal" = "0")
			)
			if(!add_account.warn_execute())
				return 0
			add_account.NextRow()
			var/datum/db_query/add_log = SSdbcore.NewQuery(
				"INSERT INTO [format_table_name("money_transaction_log")] (from_bank_accountID, money_transaction_typeID, timestamp, game_roundID) \
				VALUES (:account_id, :type_id, NOW(), :round_id)",
				list("account_id" = add_account.item[1], "type_id" = type_id, "round_id" = round_id)
			)
			if(!add_log.warn_execute())
				qdel(add_account)
				return 0
			qdel(add_account)
			qdel(add_log)

		if("debug")
			var/datum/db_query/add_account = SSdbcore.NewQuery(
			"INSERT INTO [format_table_name("bank_account")] (creator_characterID, balance) VALUES (:char_id, :bal)",
			list("char_id" = "1", "bal" = "0")
			)
			if(!add_account.warn_execute())
				return 0
			qdel(add_account)

	update_icon()

/obj/machinery/money_machine/Topic(href, href_list)
	. = ..()
	if(.)
		return .
	if(ishuman(usr))
		usr.set_machine(src)
