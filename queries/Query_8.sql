select quests.name, count(quest_id) as most_popular
from statuses, student_quests, quests
where statuses.id = student_quests.status_id and student_quests.quest_id=quests.id and statuses.id =3
group by quests.name
order by most_popular desc
limit 3;

