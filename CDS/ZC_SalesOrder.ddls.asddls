@EndUserText.label: 'Sales Order - Projection'
@Metadata.allowExtensions: true
define root view entity ZC_SalesOrder
  provider contract transactional_query
  as projection on ZI_SalesOrder
{
  key SalesOrderId,
      CustomerId,
      OrderDate,
      Status,
      CurrencyCode,
      TotalAmount,
      CreatedAt,
      LastChangedAt,
      _Item : redirected to composition child ZC_SalesOrderItem
}
