$sql='select * from users_location where
latitude > '.$lat.'-1 and
latitude < '.$lat.'+1 and
longitude > '.$lon.'-1 and
longitude < '.$lon.'+1
order by ACOS(SIN(('.$lat.' * 3.1415) / 180 ) *SIN((latitude * 3.1415) / 180 ) +COS(('.$lat.' * 3.1415) / 180 ) * COS((latitude * 3.1415) / 180 ) *COS(('.$lon.'* 3.1415) / 180 - (longitude * 3.1415) / 180 ) ) * 6380 asc limit 10';