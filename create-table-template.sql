



DROP TABLE IF EXISTS prod;
CREATE TABLE prod(  
    prId int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    prName varchar(255),
    prPrixA DECIMAL(8,2) NOT NULL ,
    prPrixS DECIMAL(8,2) NOT NULL ,
    prQtyLast int  NOT NULL COMMENT 'حد-الطلب',
   caNum INT NOT NULL ,

    create_time DATETIME COMMENT 'create time',
    update_time DATETIME COMMENT 'update time',
    FOREIGN KEY (caNum) REFERENCES category(caId)
  
) default charset utf8 comment '';