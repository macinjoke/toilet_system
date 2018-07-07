-- 近いトイレを検索 (例: x=110, y=120 の場合)
select
  name,
  (x - 110) * (x - 110) + (y - 120) * (y - 120) as distance
from toilets
order by distance;

-- 評価が高いトイレを検索
select
  t.id, t.name, avg(c.rate) as avg_rate
from
  toilets as t
inner join
  comments as c
on t.id = c.toilet_id
group by toilet_id
order by avg_rate desc;

-- 近くて評価が高いトイレを検索((例: x=110, y=120 の場合)
select
  t.id,
  t.name,
  avg(c.rate) - 100 /((x - 110) * (x - 110) + (y - 120) * (y - 120)) as score -- * 10は重み付け
from
  toilets as t
inner join
  comments as c
on t.id = c.toilet_id
group by toilet_id
order by score desc;



