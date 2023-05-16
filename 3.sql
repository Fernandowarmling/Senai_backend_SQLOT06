CREATE DEFINER = CURRENT_USER TRIGGER `mercado`.`vendedor_inativo_AFTER_DELETE` AFTER DELETE ON `vendedor` FOR EACH ROW
BEGIN
insert into vendedor_inativo values (old.idvendedor,old.nome,old.salario,old.data_nasc);
END