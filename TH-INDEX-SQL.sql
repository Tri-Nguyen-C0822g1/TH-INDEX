use classicmodels;

-- tìm thông tin khách hàng có tên 'Land Of Toys Inc.';
select * from customers where customerName = 'Land of Toys Inc,';
 
explain select * from customers where customerName = 'Land of Toys Inc.';

alter table customers add index id_customerName(customerName);
explain select * from  customers where customerName - 'Land of Toys Inc.';

-- add index theo cap;
alter table customers add index idx_full_name(contactFirstName, contactLastName);
explain select * from customers where contactFirstName = 'Jean' or contactFirstName = 'King';


-- xoa index;
alter table customers drop index idx_full_name;
