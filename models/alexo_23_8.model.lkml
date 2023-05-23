connection: "no_touchy"

# include all the views
include: "/views/**/*.view"

datagroup: alexo_23_8_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alexo_23_8_default_datagroup

explore: order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
}

explore: bills {}

explore: floor_sales {}

explore: processed_table {
  join: inventory_items {
    type: left_outer
    sql_on: ${processed_table.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {}

explore: paritioned_order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${paritioned_order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
}
