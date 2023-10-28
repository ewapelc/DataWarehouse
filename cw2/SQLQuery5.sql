CREATE TABLE [employee] (
  [employee_ID] int,
  [PESEL] varchar(11),
  [address] varchar(100),
  PRIMARY KEY ([employee_ID])
);

CREATE TABLE [ScoreMniDimension] (
  [score_ID] int,
  [emplyee_ID] int,
  [score_value] int,
  [effective_date] date,
  [current] BIT,
  PRIMARY KEY ([score_ID]),
  CONSTRAINT [FK_ScoreMniDimension.emplyee_ID]
    FOREIGN KEY ([emplyee_ID])
      REFERENCES [employee]([employee_ID])
);

CREATE TABLE [FactsHR] (
  [emplyee_ID] int,
  [score_ID] int,
  [salary] decimal(10,2),
  CONSTRAINT [FK_FactsHR.emplyee_ID]
    FOREIGN KEY ([emplyee_ID])
      REFERENCES [employee]([employee_ID]),
  CONSTRAINT [FK_FactsHR.score_ID]
    FOREIGN KEY ([score_ID])
      REFERENCES [ScoreMniDimension]([score_ID])
);

