using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GlobalStockMarket
{
    /// <summary>
    /// Query options for the Global Stock Market API
    /// </summary>
    public class GlobalStockMarketQueryOptions
    {
        /// <summary>
        /// ISO 2-letter country code
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }

        /// <summary>
        /// Specific year to retrieve all monthly data for (2000-present). Returns latest if not specified.
        /// </summary>
        [JsonProperty("year")]
        public string Year { get; set; }
    }
}
