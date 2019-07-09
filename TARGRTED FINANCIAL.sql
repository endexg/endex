/*TTI Trainee Database Development and Querying Project 
This project is to develop a database system for Targeted Financial – a hypothetical financial advisory company. 
Financial provides financial advisory services to its customers. Customers of can be individuals or companies.
Individual customers will have personal profiles, while company customers will have company profiles. So, 
we can think – Persons are Customers and Companies are Customers. Targeted Financial has financial advisors who provide 
the services (Advisors are Employees). They do provide trainings to individual customers based on pre-designed training in-house.
One training session is most of the time organized for multiple individual customers.
Customers will be encouraged to invest in Bank/Project Bonds or Stock markets. The following tables are identified by 
the previous database developer who just resigned – and you are responsible to complete the database development project.

Table Name	Columns
Employee//////////	empId, fName, lName, streetAddress, city, [state],zipcode, phoneNo, SSN, DOB, hiredDate, salary
Advisor	advisorId//, empId, specialization, level
Company	CopanyName///, OfficeStreetAddress, city, [state], zipcode, PhoneNo, contactFullName
IndividualCustomer	firstName, lName, streetAddress, city, [state], zipCode,SSN, phoneNo
Customer	custId, registeredDate, customerType
TrainingCourse	CourseNo, CourseName, level, costPerPerson
TrainingSession	CourseNo, AdvisorId, CustomerID, TrainingStartDate, TrainingEndDate
BondInvestmentOption	bId, BondSeller, sellerType, totalBond, minimumAllowed, maximumAllwed, beginDate, endDate, BondPaymentDate
StockInvestmentOption	StockId, StockName, todaysPrice, minmumAllowed, maximumAllowed, comment
BondInvestors	custId, bId, investDate, amountInvested
StockInvestors	custId, StockId, inevestDate, numberOfShares

Instructions:
•	Complete the design and normalization of the tables. Add more tables and columns are deemed important.
•	Use draw.io online tool to draw the ER diagram showing all the cardinality and optionality of the designs
•	Identify all Primary and unique keys, all kinds of constraints; for all foreign keys, apply any cascading, set null, set default or no action options as necessary.
•	Write T-SQL script to create all the tables enforcing all the constraints
•	Use Alter statements to add columns and constraints and modify definitions of some tables (At least 10 Alter statements are required)
•	Data Insert: - This instruction applies only to part of the database objects – please make sure to insert data per the design
1.	Insert 10 employees of which 4 are investment advisors
2.	Insert 15 investment options – 10 Stock and 5 Bond
3.	Insert 20 customers in total
a.	15 individuals and 5 companies
b.	From the above customers – 7 individuals should invest in at least 2 opportunities 
c.	3 individuals should invest in 1 investment option
d.	5 individuals didn’t invest in anything so far
e.	4 companies should invest in at least 2 opportunities, while 1 company invested in only one investment option
4.	Insert 7 TrainingCourses
5.	Insert 12 trainingSessions
•	Use update statements to change some data values (at least 10 update statements are required)





Stored procs, views, functions and triggers
1.	Create a stored proc/view that returns
a.	all customers – individuals and companies who have ever invested with their investments (both Bond and Stock)
b.	individual customers who have ever got trainings with the training name and time
c.	individual customers who have never got training
d.	trainingCourse which are never offered
e.	detail information of employees which are Advisors
f.	stocks which are not yet invested in
g.	bonds which are not invested in
h.	the total amount of salary paid to all employees in the year 2017 – for this one you need to have salary column in the Employee table that shows annual salary of the employee
2.	Create a stored proc that takes
a.	customerId and returns the details of the customer and its investment so far
b.	bondId and returns the bond name and the total number of investments in the bond
c.	employeeId and returns the total amount he/she is paid in the year 2017
d.	specialityId and returns all employees or advisors with that specialty – specialityId should be one column of the Employee table (if not given above, please add column)
3.	Create a stored proc that inserts data into all tables
a.	Employee, Bond, department and stock tables
4.	Create a trigger
a.	That takes audits of Bond and Stock tables – up on insert (first create the Audit tables)
b.	That takes audits of Bond and Stock tables – up on delete (first create the Audit tables)
c.	That archives Employees when they are terminated from the company – (first create EmployeeArchive table with all columns of the Employee table and termantedDate)
d.	That archives bond and stock investment options when they are no more needed and deleted (Since this will contradict with b above, you need to drop the previous trigger to create this.)
e.	Checks recruitment of Employees - if the Employee left our company, it should be at least two years before allowing them to be recruited again. Check with their SSN
