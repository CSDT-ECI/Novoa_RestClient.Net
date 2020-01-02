﻿using Microsoft.AspNetCore.Mvc;
using RestClientApiSamples;

namespace ApiExamples.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class JsonPersonController : ControllerBase
    {
        [HttpGet]
        public Person Get(string personKey)
        {
            var person = new Person
            {                 
                FirstName = "Sam",
                BillingAddress = new Address
                {
                    StreeNumber = "100",
                    Street = "Somewhere",
                    Suburb = "Sometown"
                },
                Surname = "Smith"
            };

            return person;
        }

        [HttpPost]
        [Route("save")]
        public Person Post([FromBody] Person person)
        {
            return person;
        }

        [HttpPut]
        [Route("save")]
        public Person Put([FromBody] Person person)
        {
            return person;
        }

        [HttpPatch]
        [Route("save")]
        public Person Patch([FromBody] Person person)
        {
            return person;
        }

        [HttpDelete]
        public IActionResult Delete(string personKey)
        {
            return Ok();
        }
    }
}