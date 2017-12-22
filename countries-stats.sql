SELECT
    country.name,
    COUNT(room_id)
FROM reservation

LEFT JOIN client ON reservation.client_id = client.id
LEFT JOIN country ON client.country_id = country.id

GROUP BY country.id
