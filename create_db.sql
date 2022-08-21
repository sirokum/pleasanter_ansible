alter role postgres with password 'dbpassword';
create database "Implem.Pleasanter";
\c "Implem.Pleasanter"
create extension pg_trgm;                                    
