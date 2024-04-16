select artist.artist_id,artist.name,
count(artist.artist_id)as num_of_songs,genre.name
from track
join album on album.album_id = track.album_id
join artist on album.artist_id = artist.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name = 'Rock'
group by 1,2,4
order by 3 desc