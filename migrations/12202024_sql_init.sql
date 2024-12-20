-- +goose Up
CREATE TABLE IF NOT EXISTS rooms (
    id SERIAL,
    name VARCHAR(255) NOT NULL,
    seats INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS seats (
    id SERIAL,
    room_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE IF NOT EXISTS movies (
    id SERIAL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS showtimes (
    id SERIAL,
    movie_id INT NOT NULL,
    room_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE IF NOT EXISTS tickets (
    id SERIAL,
    showtime_id INT NOT NULL,
    seat_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (seat_id) REFERENCES seats(id),
    FOREIGN KEY (showtime_id) REFERENCES showtimes(id)
);

INSERT INTO rooms (name, seats) VALUES ('Room 1', 10);
INSERT INTO rooms (name, seats) VALUES ('Room 2', 10);

INSERT INTO seats (room_id, name) VALUES (1, 'A1');
INSERT INTO seats (room_id, name) VALUES (1, 'A2');
INSERT INTO seats (room_id, name) VALUES (1, 'A3');
INSERT INTO seats (room_id, name) VALUES (1, 'A4');
INSERT INTO seats (room_id, name) VALUES (1, 'A5');
INSERT INTO seats (room_id, name) VALUES (1, 'B1');
INSERT INTO seats (room_id, name) VALUES (1, 'B2');
INSERT INTO seats (room_id, name) VALUES (1, 'B3');
INSERT INTO seats (room_id, name) VALUES (1, 'B4');
INSERT INTO seats (room_id, name) VALUES (1, 'B5');

INSERT INTO seats (room_id, name) VALUES (2, 'A1');
INSERT INTO seats (room_id, name) VALUES (2, 'A2');
INSERT INTO seats (room_id, name) VALUES (2, 'A3');
INSERT INTO seats (room_id, name) VALUES (2, 'A4');
INSERT INTO seats (room_id, name) VALUES (2, 'A5');
INSERT INTO seats (room_id, name) VALUES (2, 'B1');
INSERT INTO seats (room_id, name) VALUES (2, 'B2');
INSERT INTO seats (room_id, name) VALUES (2, 'B3');
INSERT INTO seats (room_id, name) VALUES (2, 'B4');
INSERT INTO seats (room_id, name) VALUES (2, 'B5');

INSERT INTO movies (name) VALUES ('Movie 1');
INSERT INTO movies (name) VALUES ('Movie 2');

INSERT INTO showtimes (movie_id, room_id, start_time, end_time) VALUES (1, 1, '2020-12-02 10:00:00', '2020-12-02 12:00:00');
INSERT INTO showtimes (movie_id, room_id, start_time, end_time) VALUES (1, 2, '2020-12-02 10:00:00', '2020-12-02 12:00:00');
INSERT INTO showtimes (movie_id, room_id, start_time, end_time) VALUES (2, 1, '2020-12-02 14:00:00', '2020-12-02 16:00:00');
INSERT INTO showtimes (movie_id, room_id, start_time, end_time) VALUES (2, 2, '2020-12-02 14:00:00', '2020-12-02 16:00:00');

INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 1);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 2);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 3);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 4);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 5);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 6);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 7);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 8);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 9);
INSERT INTO tickets (showtime_id, seat_id) VALUES (1, 10);

INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 11);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 12);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 13);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 14);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 15);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 16);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 17);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 18);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 19);
INSERT INTO tickets (showtime_id, seat_id) VALUES (2, 20);

INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 1);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 2);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 3);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 4);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 5);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 6);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 7);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 8);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 9);
INSERT INTO tickets (showtime_id, seat_id) VALUES (3, 10);

INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 11);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 12);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 13);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 14);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 15);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 16);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 17);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 18);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 19);
INSERT INTO tickets (showtime_id, seat_id) VALUES (4, 20);

-- +goose Down
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS showtimes;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS seats;
DROP TABLE IF EXISTS rooms;
