use Filmes
-- 1 Buscar o nome e ano dos filmes
select  Nome, Ano from filmes order by Ano;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select * from Filmes order by Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from Filmes where Nome like '%De VOlta%'

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where Ano like '20%'

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, COUNT(*) as quantidade from Filmes group by ano order by quantidade desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select * from atores where genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from atores where genero = 'F'

-- 10 - Buscar o nome do filme e o gênero
select f.Nome, g.Genero
from FIlmesGenero as fg
inner join Generos as g
on fg.IdGenero = g.Id
inner join Filmes as f
on fg.IdFilme = f.Id
order by g.Genero asc

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério",
select f.Nome, g.Genero
from FIlmesGenero as fg
inner join Generos as g
on fg.IdGenero = g.Id
inner join Filmes as f
on fg.IdFilme = f.Id
where g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from ElencoFilme as ef
inner join Atores as a
on a.Id = ef.IdAtor
inner join Filmes as f
on ef.IdFilme = f.Id
