@EndUserText.label: 'Sales Order Item - Projection'
define view entity ZC_SalesOrderItem
  as projection on ZI_SalesOrderItem
{
  key SalesOrderId,
  key ItemId,
      ProductId,
      Quantity,
      UnitPrice,
      CurrencyCode,
      CreatedAt,
      LastChangedAt,
      _SalesOrder : redirected to parent ZC_SalesOrder
}
