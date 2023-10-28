CREATE TABLE [shops] (
  [shop_ID] int,
  [address] varchar(100),
  PRIMARY KEY ([shop_ID])
);

CREATE TABLE [client] (
  [client_ID] int,
  [NIP] varchar(13),
  [address] varchar(100),
  [name] varchar(50),
  PRIMARY KEY ([client_ID])
);

CREATE TABLE [products] (
  [product_ID] int,
  [name] varchar(50),
  [category] varchar(20),
  [price_per_kg] decimal(10, 2),
  PRIMARY KEY ([product_ID])
);

CREATE TABLE [FactFruitWarehouse] (
  [client_ID] int,
  [shop_ID] int,
  [product_ID] int,
  [quantity] decimal(10,2),
  [price] decimal(10,2),
  [time] datetime,
  CONSTRAINT [FK_FactFruitWarehouse.shop_ID]
    FOREIGN KEY ([shop_ID])
      REFERENCES [shops]([shop_ID]),
  CONSTRAINT [FK_FactFruitWarehouse.client_ID]
    FOREIGN KEY ([client_ID])
      REFERENCES [client]([client_ID]),
  CONSTRAINT [FK_FactFruitWarehouse.product_ID]
    FOREIGN KEY ([product_ID])
      REFERENCES [products]([product_ID])
);