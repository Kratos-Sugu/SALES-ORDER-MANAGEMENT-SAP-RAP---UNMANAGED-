@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order - Root'
define root view entity ZI_SalesOrder
  as select from zso_header
  composition [0..*] of ZI_SalesOrderItem as _Item
{
  key sales_order_id as SalesOrderId,
      customer_id as CustomerId,
      order_date as OrderDate,
      status as Status,
      currency_code as CurrencyCode,
      total_amount as TotalAmount,
      created_at as CreatedAt,
      last_changed_at as LastChangedAt,
      _Item
}
