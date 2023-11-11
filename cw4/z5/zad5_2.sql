-- Populate the DIMdate table
DECLARE @StartDate DATE = '2015-01-01';
DECLARE @EndDate DATE = '2025-01-01';
 
-- You can adjust the start and end dates as needed
 
WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DIMdate (
        [id],
        [date],
        [quarter],
		[year],
        [month],
		[week]
    )
    VALUES (
        CONVERT(INT, CONVERT(CHAR(8), @StartDate, 112)),
        @StartDate,
		DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate),
        MONTH(@StartDate),
        DATEPART(WEEK, @StartDate)
    );
 
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;
