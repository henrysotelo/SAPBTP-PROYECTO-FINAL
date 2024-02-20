@EndUserText.label: 'Consumption Items'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z_C_ORN_ITEMS_9389
  as projection on Z_I_ORN_ITEMS_9389
{
  key HeaderId,
  key ItemId,
      Name,
      Description,
      Releasedate,
      DiscontinuedDate,
      Price,
      Height,
      Width,
      Depth,
      Quantity,
      Unitofmeasure,
      LastChangedAt,
      /* Associations */
      _Header: redirected to parent Z_C_ORN_HEADER_9389
}
