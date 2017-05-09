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
    local town_x = AIMap.GetTileX(townid_a);
    local town_y = AIMap.GetTileY(townid_a);

    local townlocation_a = AITown.GetLocation(townid_a);

    local station_a = 0;
    local station_b = 0;
    
    local road_direction_a =  find_road(town_x, town_y, 0, 0);
    local road_direction_b =  find_road(town_x, town_y, AIMap.GetTileX - town_x, AIMap.GetTileY - town_y);
  }


function find_road(gx, gy, nx, ny){
  for (local x = -1; x < 2; x+=2){
    if (x == gx){
      continue;
    }
    local test_tile = AIMap.GetTileIndex(gx + x, gy);
    if (AIRoad.IsRoadTile(test_tile)){
      return AIMap.GetTileIndex(x, y);
    }
  }
  for (local y = -1; y < 2; y+=2){
    if (y == gy){
      continue;
    }
    local test_tile = AIMap.GetTileIndex(gx, gy + y);
    if (AIRoad.IsRoadTile(test_tile)){
      return AIMap.GetTileIndex(x, y);
    }
  }
      
}  

function redneckTruckers::Save()
{
  //This function is outside the class declaration and requires the name of the class so squirrel can assign it to the right place.
}

function redneckTruckers::Load(version, data)
{
}
