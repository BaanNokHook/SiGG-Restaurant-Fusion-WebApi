using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace SiGG_Payment_Gateway.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransactionsController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<TransactionsController> _logger;

        public TransactionsController(ILogger<TransactionsController> logger)
        {
            _logger = logger;
        }
    
        [HttpPost(Name = "PostTransactions")]
        public IEnumerable<Transactions> Post()
        {
            return Enumerable.Range(1, 5).Select(index => new Transactions
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }
    }
}
