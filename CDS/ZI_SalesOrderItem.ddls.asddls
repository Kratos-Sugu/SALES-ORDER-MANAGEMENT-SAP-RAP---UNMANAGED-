@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order - Item'
define view entity ZI_SalesOrderItem
  as select from zso_item
  association to parent ZI_SalesOrder as _SalesOrder
    on $projection.SalesOrderId = _SalesOrder.SalesOrderId
{
  key sales_order_id as SalesOrderId,
  key item_id as ItemId,
      product_id as ProductId,
      quantity as Quantity,
      unit_price as UnitPrice,
      currency_code as CurrencyCode,
      created_at as CreatedAt,
      last_changed_at as LastChangedAt,
      _SalesOrder
}
