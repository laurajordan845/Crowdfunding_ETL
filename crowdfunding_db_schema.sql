--Create campaign table
CREATE TABLE "campaign" (
	"cf_id" int NOT NULL,
	"contact_id" int NOT NULL,
	"company_name" varchar NOT NULL,
	"description" varchar NOT NULL,
	"goal" numeric(10,2) NOT NULL,
	"pledged" numeric(10,2) NOT NULL,
	"outcome" varchar NOT NULL,
	"backers_count" int NOT NULL,
	"country" varchar(2) NOT NULL,
	"currency" varchar(3) NOT NULL,
	"launched_date" date NOT NULL,
	"end_date" date NOT NULL,
	"category_id" varchar NOT NULL,
	"subcategory_id" varchar NOT NULL,
	CONSTRAINT "pk_Campaign" PRIMARY KEY (
		"cf_id"
	)
);
--Load campaign csv

--Create catetgory table
CREATE TABLE "category" (
	"category_id" varchar NOT NULL,
	"category" varchar NOT NULL,
	CONSTRAINT "pk_category" PRIMARY KEY (
		"category_id"
	)
);
--Load category csv

--Create subcatetgory table
CREATE TABLE "subcategory" (
	"subcategory_id" varchar NOT NULL,
	"subcategory" varchar NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY (
		"subcategory_id"
	)
);
--Load subcategory csv

--Create contacts table
CREATE TABLE "contacts" (
	"contact_id" int NOT NULL,
	"first_name" varchar NOT NULL,
	"last_name" varchar NOT NULL,
	"email" varchar NOT NULL,
	CONSTRAINT "pk_contacts" PRIMARY KEY (
		"contact_id"
	)
);
--Load contacts csv

--Verify table creation and data loaded for campaign table
SELECT * FROM "campaign";

--Verify table creation and data loaded for category table
SELECT * FROM "category";

--Verify table creation and data loaded for subcategory table
SELECT * FROM "subcategory";

--Verify table creation and data loaded for contacts table
SELECT * FROM "contacts";