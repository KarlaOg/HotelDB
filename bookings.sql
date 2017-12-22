SELECT
    hotel.name,
    reservation.arrival,
    reservation.depature,
    room.id,
    room.price_night,
    client.first_name,
    client.last_name,
    client.phone_number

 FROM
    hotel

LEFT JOIN room ON hotel.id = room.hotel_id
LEFT JOIN reservation ON room.id = reservation.room_id
LEFT JOIN client ON reservation.client_id = client.id

WHERE reservation.arrival BETWEEN '2017-01-00' AND '2017-12-31'
