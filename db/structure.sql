CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "dateOfEvent" date, "timeOfEvent" time, "venue" varchar, "price" float, "title" varchar, "maximumParticipants" integer, "minimumParticipants" integer, "participantsMustBring" text, "notes" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "presenters" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "biography" text, "remunerationArrangements" text, "allowance" float, "remuneration" float, "person_id" integer, "event_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_presenters_on_person_id" ON "presenters" ("person_id");
CREATE INDEX "index_presenters_on_event_id" ON "presenters" ("event_id");
CREATE TABLE "organisers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "role" text, "person_id" integer, "event_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_organisers_on_person_id" ON "organisers" ("person_id");
CREATE INDEX "index_organisers_on_event_id" ON "organisers" ("event_id");
CREATE TABLE "volunteers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "role" text, "person_id" integer, "event_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_volunteers_on_person_id" ON "volunteers" ("person_id");
CREATE INDEX "index_volunteers_on_event_id" ON "volunteers" ("event_id");
CREATE TABLE "attendees" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "timePayment" datetime, "amountBilled" float, "amountPaid" float, "person_id" integer, "event_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_attendees_on_person_id" ON "attendees" ("person_id");
CREATE INDEX "index_attendees_on_event_id" ON "attendees" ("event_id");
CREATE TABLE "people" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "firstName" varchar, "lastName" varchar, "emailAddress" varchar, "telNo" integer, "ifSubscribed" boolean, "gender" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_people_on_email" ON "people" ("email");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_people_on_emailAddress" ON "people" ("emailAddress");
INSERT INTO schema_migrations (version) VALUES ('20160826081556'), ('20160826081747'), ('20160826081934'), ('20160826082041'), ('20160826082118'), ('20160826082205'), ('20160829063056'), ('20160830103632'), ('20160902064346'), ('20160902070148'), ('20160902070920'), ('20160903011303'), ('20160903013723'), ('20160903014838');


