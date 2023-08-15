using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace graigsList.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HousesController : ControllerBase
    {
        private readonly HouseService _housesService;

        public HousesController(HouseService housesService)
        {
            _housesService = housesService;
        }
        [HttpGet]
        public ActionResult<List<House>> GetHouses()
        {
            try
            {
                List<House> houses = _housesService.GetHouses();
                return Ok(houses);
            }
            catch (Exception e)
            {
                
                return BadRequest(e.Message);
            }
        }
    }
}