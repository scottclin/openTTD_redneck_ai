class redneckTruckers extends AIInfo {
  function GetAuthor()      { return "Newbie AI Writer"; }
  function GetName()        { return "redneckTruckers"; }
  function GetDescription() { return "An example AI by following the tutorial at http://wiki.openttd.org/"; }
  function GetVersion()     { return 1; }
  function GetDate()        { return "2017-05-09"; }
  function CreateInstance() { return "redneckTruckers"; }
  function GetShortName()   { return "redneck"; }
  function GetAPIVersion()  { return "1.0"; }
}

RegisterAI(redneckTruckers());
