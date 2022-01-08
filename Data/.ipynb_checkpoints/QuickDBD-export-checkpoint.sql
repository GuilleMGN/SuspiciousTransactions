-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "card_holder" (
    "id" int   NOT NULL,
    "name" string   NOT NULL,
    CONSTRAINT "pk_card_holder" PRIMARY KEY ("id")
);

CREATE TABLE "credit_card" (
    "card" int   NOT NULL,
    "cardholder_id" int   NOT NULL,
    CONSTRAINT "pk_credit_card" PRIMARY KEY ("card")
);

CREATE TABLE "merchant_category" (
    "id" int   NOT NULL,
    "name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY ("id")
);

CREATE TABLE "merchant" (
    "id" int   NOT NULL,
    "name" varchar(30)   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY ("id")
);

CREATE TABLE "transaction" (
    "id" int   NOT NULL,
    "date" datetime   NOT NULL,
    "amount" money   NOT NULL,
    "card" int   NOT NULL,
    "id_merchant" int   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY ("id")
);

ALTER TABLE "card_holder" ADD CONSTRAINT "fk_card_holder_id" FOREIGN KEY("id")
REFERENCES "credit_card" ("cardholder_id");

ALTER TABLE "credit_card" ADD CONSTRAINT "fk_credit_card_card" FOREIGN KEY("card")
REFERENCES "transaction" ("card");

ALTER TABLE "merchant_category" ADD CONSTRAINT "fk_merchant_category_id" FOREIGN KEY("id")
REFERENCES "merchant" ("id_merchant_category");

ALTER TABLE "merchant" ADD CONSTRAINT "fk_merchant_id" FOREIGN KEY("id")
REFERENCES "transaction" ("id_merchant");

CREATE INDEX "idx_card_holder_name"
ON "card_holder" ("name");

