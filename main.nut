class redneckTruckers extends AIController 
{
  function Start();
}

function redneckTruckers::Start()
{
   if (!AICompany.SetName("redneckTruckers")) {
     local i = 2;
     while (!AICompany.SetName("redneckTruckers #" + i)) {
       i = i + 1;
     }
   }

   local townList = AITownList();

   townlist.Valuate(AITown.GetPopulation);
   townlist.Sort(AIAbstractList.SORT_BY_VALUE, false);

   local townid_a = townlist.Begin();

   local townlocation_a = AITown.GetLocation(townid_a);

   local station_a = 0
   local station_b = 0

   while (station_a == 0 && station_b ==0 ){
   	 for 
   }  
}

function MyNewAI::Save()
{
   //This function is outside the class declaration and requires the name of the class so squirrel can assign it to the right place.
}

function MyNewAI::Load(version, data)
{
}
