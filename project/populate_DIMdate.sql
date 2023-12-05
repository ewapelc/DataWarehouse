-- Populate the DIMdate table
DECLARE @StartDate DATE = '2005-01-01';
DECLARE @EndDate DATE = '2015-01-01';
 
-- You can adjust the start and end dates as needed
 
WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DIMdate (
		[DateKey],
        [date],
        [quarter],
		[year],
        [month],
		[week]
    )
    VALUES (
		CAST(CONVERT(VARCHAR(8), @StartDate, 112) AS INT), -- Modified line for DateKey in YYYYMMDD format
        @StartDate,
		DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate),
        MONTH(@StartDate),
        DATEPART(WEEK, @StartDate)
    );
 
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;

