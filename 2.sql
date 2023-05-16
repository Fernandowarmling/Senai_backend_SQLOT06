CREATE DEFINER = CURRENT_USER TRIGGER `mercado`.`salario nao pode ser menor que 1200` AFTER INSERT ON `vendedor` FOR EACH ROW
BEGIN
if (new.salario < 1200) then signal sqlstate
    '45000' set message_text = 
    'Erro : salario nao pode ser menor que R$ 1200'; 
    end if;

END