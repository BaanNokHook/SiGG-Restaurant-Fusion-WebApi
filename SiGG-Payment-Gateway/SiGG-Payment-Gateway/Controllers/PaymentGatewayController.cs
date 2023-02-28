using Microsoft.AspNetCore.Mvc;

namespace SiGG_Payment_Gateway.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PaymentGatewayController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<PaymentGatewayController> _logger;

        public PaymentGatewayController(ILogger<PaymentGatewayController> logger)
        {
            _logger = logger;
        }

        [HttpPost(Name = "PostPaymentGateway")]
        public IEnumerable<PaymentGateway> Post()
        {
            return Enumerable.Range(1, 5).Select(index => new PaymentGateway
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }

        [HttpGet(Name = "GetPaymentGateway")]
        public IEnumerable<PaymentGateway> Get(int id, int amountId)
        {
            return Enumerable.Range(1, 5).Select(index => new PaymentGateway
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }

        [HttpDelete(Name = "DeletePaymentGateway")]
        public IEnumerable<PaymentGateway> Delete(int id, int amountId)
        {
            return Enumerable.Range(1, 5).Select(index => new PaymentGateway
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }

    }
}