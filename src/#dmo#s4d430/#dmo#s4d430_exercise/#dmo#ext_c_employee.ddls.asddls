extend view entity /DMO/C_Employee_Ext with
association [1..1] to I_Country as _/DMO/CountryZem
  on $projection./DMO/CountryZem = _/DMO/CountryZem.Country
  {

    Employee./DMO/TitleZem,
    Employee./DMO/CountryZem,

    concat_with_space( Employee.FirstName,
                       Employee.LastName,
                       1  )                as /DMO/FullNameZem,

    _/DMO/CountryZem.IsEuropeanUnionMember as /DMO/EUBasedZem

  }
