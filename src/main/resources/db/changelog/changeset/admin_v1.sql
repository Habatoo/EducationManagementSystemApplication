INSERT INTO users(id, username, email, password) VALUES
(1, 'admin', 'admin@admin.com', '$2a$10$EfVS7r4YFJVUKtoKtipoAuuj.e6z7ed/nEDNGrXB2z6M52d9zmtkW'),
(2, 'teacher', 'teacher@teacher.com', '$2a$10$7JGsM41kbXX7/vJ2lc3pb.wdoIoANWTme.NErCU2TSv1RcPnDaBaS'),
(3, 'user', 'user@user.com', '$2a$10$7JGsM41kbXX7/vJ2lc3pb.wdoIoANWTme.NErCU2TSv1RcPnDaBaS');

INSERT INTO user_roles VALUES
(1, 1), (2, 2), (3, 3);