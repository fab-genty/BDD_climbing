--La réunions ayant attiré le plus de participants, pour chaque type de réunion.
--Dans notre cas le meeting ou il y le plus de participant en vitesse,
--celui ou il y a le plus de participant en bloc, en difficulté,en vitesse

select id_mbr 
from athlete natural join participe natural join competition
where id_discip =1
group by id_comp;
