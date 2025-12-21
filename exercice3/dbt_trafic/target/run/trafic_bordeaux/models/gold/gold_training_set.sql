
  
    
    

    create  table
      "warehouse"."main"."gold_training_set__dbt_tmp"
  
    as (
      select *
from "warehouse"."main"."silver_trafic"
    );
  
  