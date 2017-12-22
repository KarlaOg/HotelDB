SELECT
hotel.name,
hotel.phone_number,
room.number,
room.bed_number,
room.price_night
FROM
room
LEFT JOIN hotel ON hotel.id = room.hotel_id
