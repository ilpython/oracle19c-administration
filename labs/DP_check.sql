conn system/fenago@pdb2
truncate table sh.inventories;
alter table sh.inventories enable CONSTRAINT ck_warehouse_id;
exit
