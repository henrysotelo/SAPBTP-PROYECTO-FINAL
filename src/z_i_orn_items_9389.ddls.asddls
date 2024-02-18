@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_ORN_ITEMS_9389
  as select from zorn_items_9389
  association to parent Z_I_ORN_HEADER_9389 as _Header on $projection.HeaderId = _Header.HeaderId
{
  key header_id         as HeaderId,
  key item_id           as ItemId,
      name              as Name,
      description       as Description,
      releasedate       as Releasedate,
      discontinued_date as DiscontinuedDate,
      price             as Price,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      height            as Height,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      width             as Width,
      depth             as Depth,
      quantity          as Quantity,
      unitofmeasure     as Unitofmeasure,
      last_changed_at   as LastChangedAt,
      _Header
}
