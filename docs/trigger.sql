--Produtor
CREATE TRIGGER PRODUTOR_BI for PRODUTOR
active before insert position 0
as
begin
  if (new.CODIGO is null) then
  begin
    new.CODIGO = gen_id( PRODUTOR_SEQ, 1 );
  end
END;

--Produto
CREATE TRIGGER PRODUTO_BI for PRODUTO
active before insert position 0
as
begin
  if (new.CODIGO is null) then
  begin
    new.CODIGO = gen_id( PRODUTO_SEQ, 1 );
  end
END;

--Trade
CREATE TRIGGER TRADE_BI for TRADE
active before insert position 0
as
begin
  if (new.CODIGO is null) then
  begin
    new.CODIGO = gen_id( TRADE_SEQ, 1 );
  end
END;

--Silo
CREATE TRIGGER SILO_BI for SILO
active before insert position 0
as
begin
  if (new.CODIGO is null) then
  begin
    new.CODIGO = gen_id( SILO_SEQ, 1 );
  end
END;

--Contrato
CREATE TRIGGER CONTRATO_BI for CONTRATO
active before insert position 0
as
begin
  if (new.CODIGO is null) then
  begin
    new.CODIGO = gen_id( CONTRATO_SEQ, 1 );
  end
END;

--Contrato Silo
CREATE TRIGGER CONTRATO_SILO_BI for CONTRATO_SILO
active before insert position 0
as
begin
  if (new.CODIGO is null) then
  begin
    new.CODIGO = gen_id( CONTRATO_SILO_SEQ, 1 );
  end
END;