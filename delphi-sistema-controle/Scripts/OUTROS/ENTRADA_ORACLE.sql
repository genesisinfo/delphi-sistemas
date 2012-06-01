Clear

Drop Table FIS_TESTE;
Drop Table EST_TESTE;

Create Table FIS_TESTE As
Select 
1 COD_EMPRESA,
1 COD_FILIAL,
1 COD_FORNECEDOR,
NUM_DOCUMENTO,
NOM_SERIE,
VAL_CONTABIL_TOT VAL_TOTAL,
0 VAL_CUSTOS_NF,
0 VAL_CUSTOS,
TO_CHAR(DAT_EMISSAO,'MM-DD-YYYY') DAT_EMISSAO,
TO_CHAR(DAT_ENTRADA,'MM-DD-YYYY') DAT_ENTRADA,
'N' FLG_TIPO
From FIS_ENTRADA
Where 
(COD_EMPRESA,COD_FILIAL,FLG_CADASTRO,COD_CADASTRO,NUM_DOCUMENTO,NOM_SERIE) In 
(Select 
  COD_EMPRESA,COD_FILIAL,FLG_CADASTRO,COD_CADASTRO,NUM_DOCUMENTO,NOM_SERIE
 From EST_ENTRADA
 Where COD_EMPRESA =1 And 
COD_FILIAL = 99 And 
COD_PRODUTO = 8656);

  
CREATE TABLE EST_TESTE As 
Select 
1 COD_EMPRESA,
1 COD_FILIAL,
1 COD_FORNECEDOR,
NUM_DOCUMENTO,
NOM_SERIE,
8656 COD_PRODUTO,
TO_CHAR(DAT_MOV,'MM-DD-YYYY') DAT_MOV,
QTD_MOV,
VAL_MOV,
VAL_CUSTO,
ROUND(DECODE (QTD_MOV,0,0,VAL_MOV / QTD_MOV),2) VAL_PRODUTO,
QTD_FISICO,
VAL_FINAN,
'N' FLG_TIPO
From 
EST_ENTRADA 
Where 
COD_EMPRESA =1 And 
COD_FILIAL = 99 And 
COD_PRODUTO = 8656;
