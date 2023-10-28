CREATE TABLE [courier_company] (
  [company_ID] int,
  [NIP] varchar(13),
  [address] varchar(100),
  [name] varchar(50),
  PRIMARY KEY ([company_ID])
);

CREATE TABLE [products] (
  [product_ID] int,
  [publisher] varchar(50),
  [ISBN] varchar(50),
  [title] varchar(50),
  [author] varchar(100),
  [number_of_pages] int,
  PRIMARY KEY ([product_ID])
);

CREATE TABLE [client] (
  [client_ID] int,
  [phone_number] varchar(20),
  [address] varchar(100),
  [name] varchar(50),
  [surname] varchar(50),
  PRIMARY KEY ([client_ID])
);

CREATE TABLE [FactOnlineShop] (
  [company_ID] int,
  [product_ID] int,
  [client_ID] int,
  [date] date,
  CONSTRAINT [FK_FactOnlineShop.company_ID]
    FOREIGN KEY ([company_ID])
      REFERENCES [courier_company]([company_ID]),
  CONSTRAINT [FK_FactOnlineShop.product_ID]
    FOREIGN KEY ([product_ID])
      REFERENCES [products]([product_ID]),
  CONSTRAINT [FK_FactOnlineShop.client_ID]
    FOREIGN KEY ([client_ID])
      REFERENCES [client]([client_ID])
);

