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
    }
}