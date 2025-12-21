
  
  create view "warehouse"."main"."bronze_jours_feries__dbt_tmp" as (
    select * from read_parquet('C:/Users/HP-X360-1030-G3/PycharmProjects/notebooks/exercice1/data/parquet/jours_feries_metropole/*.parquet')
  );
