
  
    
    

    create  table
      "warehouse"."main"."silver_trafic__dbt_tmp"
  
    as (
      select *
from "warehouse"."main"."bronze_ci_trafi_l"
    );
  
  