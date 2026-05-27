-- ALTER TABLE Municipios_Brasileiros ADD COLUMN pais VARCHAR(50);

-- como se trata de municípios exclusivamente brasileiros, não há problema em usar o UPDATE sozinho
-- sem WHERE, aplica-se 'Brasil' a todos os municípios, em todas as linhas
-- WHERE é usado quando a alteração tiver um alvo específico e é mais seguro para UPDATE e DELETE
-- UPDATE Municipios_Brasileiros SET pais='Brasil';

-- SELECT Regiao FROM Municipios_Brasileiros;

-- SELECT * FROM Municipios_Brasileiros;

-- SELECT * FROM Municipios_Brasileiros WHERE Cidade LIKE 'rio de janeiro';

-- SELECT * FROM Municipio_Status WHERE populacao_residente>50000;

-- essa query retorna apenas os registros onde há correspondência de ids nas duas tabelas
-- traz a populacao_residente de Municipio_Status para a cidade de Municipios_Brasileiros
-- SELECT Municipios_Brasileiros.Cidade, Municipio_Status.populacao_residente FROM Municipios_Brasileiros INNER JOIN Municipio_Status ON 
	-- Municipios_Brasileiros.municipio_ID = Municipio_Status.municipio_ID;

-- SELECT Estado, COUNT(Cidade) FROM Municipios_Brasileiros GROUP BY Estado ORDER BY 2 DESC;

-- SELECT SUM(pessoas_brancas), SUM(pessoas_pretas_pardas) FROM Gerencia_Regiao;

-- SELECT Regiao, MAX(pessoas_pretas_pardas) FROM Gerencia_Regiao;

-- SELECT Regiao, MIN(pessoas_pretas_pardas) FROM Gerencia_Regiao;

SELECT Regiao FROM Gerencia_Regiao WHERE gerencia_branca>gerencia_preta_parda;


















