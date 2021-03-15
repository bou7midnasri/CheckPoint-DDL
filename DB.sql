
/* creation de tabled customer */
create table customer(
    customer_id varchar(20) constraint pk_cust primary key,
    customer_name varchar(20) not null,
    customer_tel number(8) 
);

/* creation de tabled product */
create table product(
    product_id varchar(20) constraint pk_product primary key,
    product_name varchar(20) not null,
    price number check (price > 0)

);

/* creation de tabled order */
create table orders(
    customer_id varchar(20),
    product_id varchar(20),
    quantity number,
    total_amount number,
    Constraint FK_cust Foreign key(customer_id)  references customer(customer_id) ,
    Constraint FK_Code_Mat Foreign key(product_id) references product(product_id),
    Constraint Pk_cust_prod primary key(customer_id, product_id)

);

/* ADD COLUMN  TABLE PRODUCT*/
ALTER TABLE product
ADD categorie VARCHAR(20)


/* ADD COLUMN  TABLE */
ALTER TABLE orders
ADD order_date date
DEFAULT SYSDATE


