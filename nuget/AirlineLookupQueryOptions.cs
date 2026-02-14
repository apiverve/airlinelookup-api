using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AirlineLookup
{
    /// <summary>
    /// Query options for the Airline Lookup API
    /// </summary>
    public class AirlineLookupQueryOptions
    {
        /// <summary>
        /// The IATA code of the airline for which you want to get the information (e.g., AA)
        /// </summary>
        [JsonProperty("iata")]
        public string Iata { get; set; }
    }
}
