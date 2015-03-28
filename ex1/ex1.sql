drop database if exists test230209;
create database test230209;
use test230209

### CRETE TABLES
select "Creating tables" as "";

create table Progetto (
    id int primary key auto_increment,
    nome varchar(255) not null,
    inizio date not null,
    fine date not null
);

create table Impiegato (
    id int primary key auto_increment,
    nome varchar(255) not null,
    cognome varchar(255) not null
);

create table Partecipazione (
    progetto int not null,
    impiegato int not null,
    primary key(progetto, impiegato),
    foreign key (progetto) references Progetto (id),
    foreign key (impiegato) references Impiegato (id)
);

### INSERT VALUES
select "Inserting values" as "";

insert into Progetto (nome, inizio, fine) values
    ("Mercurio", 070101, 101231),
    ("Giove", 080101, 151231),
    ("Venere", 060110, 090110),
    ("Marte", 050215, 200215),
    ("Saturno", 000302, 100710),
    ("Apollo", 000101, 100101);

select * from Progetto;

insert into Impiegato values
    (1, "Mario", "Rossi"),
    (default, "Giuseppe", "Verdi"),
    (4, "Andrea", "Bianchi"),
    (3, "Marco", "Neri");

select * from Impiegato;

insert into Partecipazione values (1, 1), (1, 2), (2, 1), (2, 2), (2, 3),
    (3, 1), (3, 2), (3, 3), (4, 2), (4, 1), (4, 3), (5, 3), (6, 3);

select * from Partecipazione;

### QUERIES

# Q1
select "Query 1" as "";
select nome as "Nome progetto" from Progetto
    where inizio >= 061231 and fine <= 101231;

# Q2
select "Query 2" as "";
select
    Progetto.nome as "Nome progetto",
    Impiegato.nome as "Nome impiegato",
    cognome as "Cognome impiegato"
    from
    (Progetto join Partecipazione on progetto = Progetto.id)
    join Impiegato on impiegato = Impiegato.id;

# Q3
select "Query 3" as "";
# select * from Partecipazione group by progetto having count(impiegato) >= 2;
select nome as "Nome progetto"
    from Progetto join Partecipazione on id = progetto
    group by progetto having count(impiegato) >= 2;

# Q4
select "Query 4" as "";
select nome as "Nome impiegato"
    from Impiegato join Partecipazione on id = impiegato
    group by impiegato having count(progetto) >= 3;

# Q5
select "Query 5" as "";
select count(impiegato) / count(distinct progetto) as "Media partecipanti"
    from Partecipazione;

