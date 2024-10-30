@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Read Only: Employee Hierarchy'

define hierarchy ZI_EmployeeHN_fmb
  as parent child hierarchy(
    source ZR_EMPLOYEEFMB
    child to parent association _Manager
    start where
      ManagerUuid is initial
    siblings order by
      LastName ascending
  )
{
  key Uuid,
      ManagerUuid
}
