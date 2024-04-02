@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Header'
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'HeaderId' ]
define root view entity Z_C_ORN_HEADER_9389
  provider contract transactional_query
  as projection on Z_I_ORN_HEADER_9389
{
  key HeaderId,
      @Search.defaultSearchElement: true
      Email,
      @Search.defaultSearchElement: true
      FirstName,
      @Search.defaultSearchElement: true
      LastName,
      Country,
      CreateOn,
      DeliveryDate,
      OrderStatus,
      ImageUrl,
      @Semantics.user.createdBy: true
      CreatedBy,
      CreatedAt,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Items : redirected to composition child Z_C_ORN_ITEMS_9389
}
