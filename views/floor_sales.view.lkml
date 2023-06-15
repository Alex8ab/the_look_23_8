view: floor_sales {
  sql_table_name: `e_commerce.floor_sales`
    ;;

  dimension: floor {
    type: number
    sql: ${TABLE}.floor ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.store ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
