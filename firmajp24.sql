drop database IF EXISTS firmajp24;
create database firmajp24;
use firmajp24;

create table projekt(
	sifra int NOT NULL PRIMARY KEY auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2)
	);
	
create table programer(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	datumrodenja datetime,
	placa decimal(18,2)
	);
	
create table sudjeluje(
	projekt int not null,
	programer int not null,
	datumpocetka datetime not null,
	datumkraja datetime
	);
	
alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);





