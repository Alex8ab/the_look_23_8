view: bills {
  sql_table_name: `e_commerce.bills`
    ;;

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: smoker {
    type: yesno
    sql: ${TABLE}.smoker ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: tip {
    type: number
    sql: ${TABLE}.tip ;;
  }

  dimension: total_bill {
    type: number
    sql: ${TABLE}.total_bill ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
