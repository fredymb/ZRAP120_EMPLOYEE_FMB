@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
@OData.hierarchy.recursiveHierarchy:[{ entity.name: 'ZI_EmployeeHN_FMB' }]
@Search.searchable: true
define root view entity ZC_EMPLOYEEFMB
  // provider contract TRANSACTIONAL_QUERY
  as projection on ZR_EMPLOYEEFMB
  association of many to one ZC_EMPLOYEEFMB as _Manager on $projection.ManagerUuid = _Manager.Uuid
{
  key Uuid,
      EmployeeId,
      @Search: {
      defaultSearchElement: true,
      fuzzinessThreshold:  0.8
      }
      FirstName,
      @Search: {
      defaultSearchElement: true,
      fuzzinessThreshold:  0.8
      }
      LastName,
      @Semantics.currencyCode: true
      SalaryCurr,
      Salary,
      ManagerId,
      ManagerUuid,
      /* Public Associations */
      _Manager

}
