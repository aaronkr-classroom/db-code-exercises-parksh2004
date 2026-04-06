TABLE UserAccount{
	user_id INT [pk]
	email VARCHAR
	password VARCHAR
	created_at TIMESTAMP
}

TABLE Character{
	chracter_id INT [pk]
	user_id int
	name varchar
	level int
	class varchar

}

TABLE Item{
	item_id INT [pk]
	name VARCHAR
	type VARCHAR
}

Table Inventory {
  chracter_id INT
  item_id INT
  quantity INT

  indexes {
    (chracter_id, item_id) [pk]
  }
}


	Ref:  Character.user_id > UserAccount.user_id
	Ref:  Inventory.chracter_id > Character.chracter_id
	Ref:  Inventory.item_id > Item.item_id