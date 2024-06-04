-- Creation de la table Customer -----------------------
CREATE TABLE Customer (
    Customer_id NUMBER(3) CONSTRAINT Customer_PK PRIMARY KEY,
    customer_Name VARCHAR2(25) NOT NULL,
    customer_Tel VARCHAR(14)
);

-- Creation de la table Product -----------------------
CREATE TABLE Product (
    Product_id NUMBER(3) CONSTRAINT Product_PK PRIMARY KEY,
    product_name VARCHAR2(25) NOT NULL,
    Price NUMBER(7) NOT NULL,
    Category VARCHAR2(20) NOT NULL
);

-- Creation de la table Orders -----------------------
CREATE TABLE Orders (
    Customer_id NUMBER(3) CONSTRAINT Customer_FK REFERENCES Customer (Customer_id),
    Product_id NUMBER(3) CONSTRAINT Product_FK REFERENCES Product (Product_id),
    quantity NUMBER(3) NOT NULL,
    total_amount NUMBER(7) NOT NULL,
    OrderDate DATE DEFAULT (SYSDATE) NOT NULL
);