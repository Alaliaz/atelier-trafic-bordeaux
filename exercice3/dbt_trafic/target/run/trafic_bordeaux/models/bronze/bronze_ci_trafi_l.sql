
  
  create view "warehouse"."main"."bronze_ci_trafi_l__dbt_tmp" as (
    select * from read_parquet('C:/Users/HP-X360-1030-G3/PycharmProjects/notebooks/exercice1/data/parquet/ci_trafi_l/*.parquet')
  );
