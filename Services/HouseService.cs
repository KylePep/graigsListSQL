using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace graigsList.Services
{
    public class HouseService
    {
        private readonly HousesRepository _housesRepository;

        public HouseService(HousesRepository housesRepository)
        {
            _housesRepository = housesRepository;
        }

        internal List<House> GetHouses()
        {
            List<House> houses = _housesRepository.GetHouses();
            return houses;
        }

        internal House GetHouseById(int houseId)
        {
            House house = _housesRepository.GetHouseById(houseId);
            if (house == null) {
                throw new Exception($"{houseId} is not a valid ID");
            }
            return house;
        }

        internal House CreateHouse(House houseData)
        {
            int houseId = _housesRepository.CreateHouse(houseData);
            House house = GetHouseById(houseId);
            return house;
        }

        internal House RemoveHouse(int houseId)
        {
            House house = GetHouseById(houseId);
            _housesRepository.RemoveHouse(houseId);
            return house;
        }
    }
}