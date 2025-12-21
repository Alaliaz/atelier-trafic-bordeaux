
  
    
    

    create  table
      "warehouse"."main"."silver_calendrier__dbt_tmp"
  
    as (
      select *
from "warehouse"."main"."bronze_jours_feries"
    );
  
  