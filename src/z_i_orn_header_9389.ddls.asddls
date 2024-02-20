@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity Z_I_ORN_HEADER_9389
  as select from zorn_header_9389 as Header
  composition [0..*] of Z_I_ORN_ITEMS_9389 as _Items
{
  key header_id       as HeaderId,
      email           as Email,
      first_name      as FirstName,
      last_name       as LastName,
      country         as Country,
      create_on       as CreateOn,
      delivery_date   as DeliveryDate,
      order_status    as OrderStatus,
      image_url       as ImageUrl,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,
      _Items
}
