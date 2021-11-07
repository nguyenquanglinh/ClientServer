using Server.Models;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web.Http;
using HttpDeleteAttribute = System.Web.Http.HttpDeleteAttribute;
using HttpGetAttribute = System.Web.Http.HttpGetAttribute;
using HttpPostAttribute = System.Web.Http.HttpPostAttribute;
using HttpPutAttribute = System.Web.Http.HttpPutAttribute;

namespace Server.Controllers
{
    public class OthersController : ApiController
    {
        Model1 db = new Model1();
        // GET api/values
        [HttpGet]
        public ResultCNFromPBCV GetCNFromPBCV()
        {
            return db.Database.SqlQuery<ResultCNFromPBCV>("exec [dbo].[CNFromPBCV]").FirstOrDefault();
        }

        // GET api/values/5
        [HttpGet]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/values/5
        [HttpPut]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete]
        public void Delete(int id)
        {

        }
    }
}