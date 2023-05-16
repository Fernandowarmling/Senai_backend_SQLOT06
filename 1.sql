CREATE DEFINER=`root`@`localhost` TRIGGER `salarioNaoDiminui_AFTER_UPDATE` AFTER UPDATE ON `vendedor` FOR EACH ROW BEGIN
if (new.salario < old.salario) then signal sqlstate
    '45000' set message_text = 
    'Erro : salario nao pode ser menor queo anterior'; 
    end if;
    
END