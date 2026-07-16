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
        /// Year to retrieve data for (2000-present). Requires month parameter.
        /// </summary>
        [JsonProperty("year")]
        public int? Year { get; set; }

        /// <summary>
        /// Month to retrieve data for (1-12). Required when year is specified.
        /// </summary>
        [JsonProperty("month")]
        public int? Month { get; set; }
    }
}
