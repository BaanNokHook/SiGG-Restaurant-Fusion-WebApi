using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace SiGG_Payment_Gateway.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<AuthController> _logger;

        public AuthController(ILogger<AuthController> logger)
        {
            _logger = logger;
        }

        [HttpPost(Name = "PostAuth")]
        public IEnumerable<Auth> Post()
        {
            return Enumerable.Range(1, 5).Select(index => new Auth
            {
                token = Summaries[Random.Shared.Next(Summaries.Length)],
                expiration = DateTime.Now.AddDays(index)
            })
            .ToArray();
        }
    }
}

