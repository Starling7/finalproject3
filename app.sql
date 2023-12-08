drop table if exists ticket;
create table tickets (
	id serial,
	class_name text,
	supporter_name text,
	gender text,
	stadium_name text,
	ticket_price text,
	match_name text,
	time_info time,
	date_info date
);

insert into ticket (class_name, supporter_name, gender, stadium_name, ticket_price, match_name, time_info, date_info) 
values
	('Economy', 'Agam', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:05', '2024-10-03'),
	('VVIP', 'Jose', 'male', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:06', '2024-10-03'),
	('VVIP', 'Malik', 'male', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:04', '2024-10-03'),
	('VVIP', 'Yoze', 'female', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:20', '2024-10-03'),
	('Economy', 'Ahmad', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:10', '2024-10-03'),
	('Regular', 'Ammar', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:11', '2024-10-03'),
	('Economy', 'Bani', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:07', '2024-10-03'),
	('Regular', 'Furki', 'female', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:06', '2024-10-03'),
	('Economy', 'Busaeri', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:06', '2024-10-03'),
	('VIP', 'Razak', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:08', '2024-10-03'),
	('Regular', 'Rifki', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:09', '2024-10-03'),
	('Regular', 'Faza', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:39', '2024-10-03'),
	('Economy', 'Nova', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:47', '2024-10-03'),
	('VVIP', 'Maya', 'female', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:53', '2024-10-03'),
	('VIP', 'Ana', 'female', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:21', '2024-10-03'),
	('Economy', 'Rama', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:14', '2024-10-03'),
	('VVIP', 'Miya', 'female', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:31', '2024-10-03'),
	('Economy', 'Gondes', 'female', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:25', '2024-10-03'),
	('Economy', 'Kiki', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:44', '2024-10-03'),
	('Economy', 'Kumar', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:07', '2024-10-03'),
	('Economy', 'Jota', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:09', '2024-10-03'),
	('Economy', 'Chris', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:05', '2024-10-03'),
	('VVIP', 'Fatika', 'female', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:05', '2024-10-03'),
	('Regular', 'Basir', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:05', '2024-10-03'),
	('Regular', 'Bojan', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:12', '2024-10-03'),
	('VIP', 'Nolan', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:17', '2024-10-03'),
	('VVIP', 'Agus', 'male', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:22', '2024-10-03'),
	('Economy', 'Supadi', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:19', '2024-10-03'),
	('VIP', 'Anya', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:33', '2024-10-03'),
	('Regular', 'Hamid', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:35', '2024-10-03'),
	('Regular', 'Hamdan', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:16', '2024-10-03'),
	('Economy', 'Ropin', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:49', '2024-10-03'),
	('VVIP', 'Dila', 'female', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:53', '2024-10-03'),
	('VIP', 'Ana', 'female', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:33', '2024-10-03'),
	('VIP', 'Kaje', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:49', '2024-10-03'),
	('VVIP', 'Irja', 'male', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:47', '2024-10-03'),
	('Regular', 'Bruno', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:11', '2024-10-03'),
	('VIP', 'Aji', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:04', '2024-10-03'),
	('VIP', 'Sugar', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:03', '2024-10-03'),
	('Regular', 'Maxxhill', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:15', '2024-10-03'),
	('VIP', 'Adi', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:25', '2024-10-03'),
	('Regular', 'Acill', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:35', '2024-10-03'),
	('Regular', 'Hamdan', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:35', '2024-10-03'),
	('VIP', 'Nala', 'female', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:48', '2024-10-03'),
	('VVIP', 'Billie', 'female', 'Jakarta International Stadium', 500000 , 'Indonesia vs Argentina', '19:23', '2024-10-03'),
	('Economy', 'Yunus', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:59', '2024-10-03'),
	('Economy', 'Paris', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:29', '2024-10-03'),
	('Regular', 'Jeffry', 'male', 'Jakarta International Stadium', 250000 , 'Indonesia vs Argentina', '19:40', '2024-10-03'),
	('Economy', 'Winson', 'male', 'Jakarta International Stadium', 150000 , 'Indonesia vs Argentina', '19:55', '2024-10-03'),
	('VIP', 'El Ruby', 'male', 'Jakarta International Stadium', 350000 , 'Indonesia vs Argentina', '19:37', '2024-10-03')
	;
