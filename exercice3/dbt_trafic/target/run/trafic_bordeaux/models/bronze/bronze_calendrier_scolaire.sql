
  
  create view "warehouse"."main"."bronze_calendrier_scolaire__dbt_tmp" as (
    select * from read_parquet('C:/Users/HP-X360-1030-G3/PycharmProjects/notebooks/exercice1/data/parquet/calendrier_scolaire/*.parquet')
  );
