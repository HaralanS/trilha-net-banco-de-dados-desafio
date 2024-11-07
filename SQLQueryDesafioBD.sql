
--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 100 AND 150

--7
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mist�rio'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
