CREATE TABLE [storageFacility] (
  [facility_ID] int,
  [address] varchar(100),
  [country] varchar(50),
  PRIMARY KEY ([facility_ID])
);

CREATE TABLE [products] (
  [product_ID] int,
  [name] varchar(100),
  [brand] varchar(50),
  PRIMARY KEY ([product_ID])
);

CREATE TABLE [AvailibilityMiniDim] (
  [availability_ID] int,
  [product_ID] int,
  [available] BIT,
  [effective_date] date,
  [current] BIT,
  PRIMARY KEY ([availability_ID]),
  CONSTRAINT [FK_AvailibilityMiniDim.product_ID]
    FOREIGN KEY ([product_ID])
      REFERENCES [products]([product_ID])
);

CREATE TABLE [FactsWarehouse] (
  [facility_ID] int,
  [product_ID] int,
  [availability_ID] int,
  [date] date,
  CONSTRAINT [FK_FactsWarehouse.facility_ID]
    FOREIGN KEY ([facility_ID])
      REFERENCES [storageFacility]([facility_ID]),
  CONSTRAINT [FK_FactsWarehouse.product_ID]
    FOREIGN KEY ([product_ID])
      REFERENCES [products]([product_ID]),
  CONSTRAINT [FK_FactsWarehouse.availability_ID]
    FOREIGN KEY ([availability_ID])
      REFERENCES [AvailibilityMiniDim]([availability_ID])
);

