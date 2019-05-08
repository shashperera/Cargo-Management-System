
create table users(
			userID int(4) unsigned zerofill  not null auto_increment,
            name varchar(150) not null,
            address varchar(200) not null,
            contactNo varchar(15) not null,
            email varchar(40) not null,
            userType varchar(10) not null,
            username varchar(30) not null,
            password varchar(30) not null,
            primary key (userID)
            
            );
            
create table cost(
			num int not null primary key auto_increment,
			Opt char(6) not null,
            PackageWeight_1to10_KG float not null,
            PackageWeight_11to25_KG float not null,
            PackageWeight_26to50_KG float not null,
			Above50KG float not null,
            tax float not null,
            TotalPortCost float not null,
            CostPerOneContainer float not null,
            constraint chk_cost check (PackageWeight_1to10_KG> 100)
            );
            
            
 create table cargoExpo(
			expoID int not null auto_increment,
            productCategory varchar(50) not null,
            noOfContainers int(11) not null,
            size int not null,
            ref char(5) not null,
            transpType varchar(7) not null,
            routeSelection varchar(10) not null,
            userID int(4) unsigned zerofill not null,
            notify varchar(200),
            primary key (expoID),
            foreign key (userID) references users(userID)            
            );
            
            
create table packageExpo(
			expoID int not null auto_increment,
            productCategory varchar(50) not null,
            weight float not null,
            transpType varchar(10) not null,
            routeSelection char(5) not null,
            userID int(4) unsigned zerofill not null,
            primary key (expoID),
            notify varchar(200),
            foreign key (userID) references users(userID)
            );
            


            
 create table CargoShipment(
			shipmentID mediumint unsigned not null auto_increment,
            refID int not null,
            routeOption char(5) not null,
            date1 varchar(12) not null,
            portName1 varchar(20) not null,
            date2 varchar(12) ,
            portName2 varchar(20) ,
            date3 varchar(12) ,
            portName3 varchar(20),
			primary key (shipmentID),
            foreign key (refID) references cargoExpo(expoID)			            
            );
            
create table PackageShipment(
			PshipmentID mediumint unsigned not null auto_increment,
            refID int not null,
            routeOption char(5) not null,
            date1 varchar(12) not null,
            portName1 varchar(20),
            date2 varchar(12) ,
            portName2 varchar(20) ,
            date3 varchar(12) ,
            portName3 varchar(20),
			primary key (PshipmentID),
            foreign key (refID) references packageExpo(expoID)
            );

            
 
 alter table cargoExpo
 auto_increment = 5000;
 
 alter table packageExpo
 auto_increment = 10000;
 
 insert into users(name, address, contactNo, email, userType, username, password)
					values ('kamal', 'Colombo', '0113456789', 'k@gmail.com', 
                    'customer' , 'kamal', 'kamal'); 
                    
insert into users(name, address, contactNo, email, userType, username, password)
					values ('Nimal', 'wattala', '0779028929', 'N@gmail.com', 
                    'officer' , 'nimal', 'nimal'); 
                    
insert into users(name, address, contactNo, email, userType, username, password)
					values ('Ishan', 'Galle', '0716789201', 'ish@gmail.com', 
                    'customer' , 'ishan', 'ishan'); 
   
insert into users(name, address, contactNo, email, userType, username, password)
					values ('Rakitha', 'Colombo', '01156739028', 'raki@gmail.com', 
                    'officer' , 'rakitha', 'rakitha'); 
                    
insert into users(name, address, contactNo, email, userType, username, password)
					values ('Keshan', 'Negombo', '0114561390', 'k@gmail.com', 
                    'admin' , 'keshan', 'keshan'); 

                    
insert into cost(Opt,PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG,tax,TotalPortCost,CostPerOneContainer)  values('Sea1',100,200,300,400,0.1,5000,1500);
insert into cost(Opt,PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG,tax,TotalPortCost,CostPerOneContainer)  values('Sea2',150,280,350,450,0.2,8000,1800);
insert into cost(Opt,PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG,tax,TotalPortCost,CostPerOneContainer) values('Air1',140,200,300,400,0.3,10000,2500);
insert into cost(Opt,PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG,tax,TotalPortCost,CostPerOneContainer) values('Air2',120,450,500,600,0.4,15000,3500);
           
           
 
 
 
 /*insert into cargoExpo(productCategory, noOfContainers, netWeight, dimension, 
						transpType, routeSelection, userID) values ('paper',
                        3, 12.5, 25.55, 'Sea',1, 0001);
 */
 
 /*
 select * from cargoExpo;
 
 select * from packageExpo;
 desc packageexpo;
 
 select * from packageshipment;
 desc packageShipment;
 
 select * fr
 
 om cargoshipment;
 select * from bill;
 
 show tables;
 
create database cargoApp;
   
show databases;          
            
use cargoApp;		
            
show tables;
            
 /*insert into packageExpo(productCategory,weight, 
						transpType, routeSelection, userID,notify) values ('paper',30,
                     'Sea', 'sea1', 0005,'eeeee');
 */

 
 /* 
            
            alter table cost add constraint chk_cost check (PackageWeight(1-10 KG) > 100);
            alter table cost add constraint chk_cost check (PackageWeight(1-10 KG) );
            alter table cost add constraint chk_cost check (PackageWeight(1-10 KG) );
            alter table cargoExpo add notify varchar(200);
            alter table packageExpo add notify varchar(200);
            
           
          
             select * from users;
             select * from cargoExpo;
             select * from packageExpo;
			 select * from cargoshipment;
             select * from packageshipment;*/
  
			 DESC cargoExpo;
             desc cost;
             drop table cost;
             drop table cargoShipment;
             drop table packageShipment;
             drop table cargoexpo;  
             drop table packageexpo;
             drop table users;
             