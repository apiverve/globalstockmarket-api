declare module '@apiverve/globalstockmarket' {
  export interface globalstockmarketOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface globalstockmarketResponse {
    status: string;
    error: string | null;
    data: GlobalStockMarketData;
    code?: number;
  }


  interface GlobalStockMarketData {
      country:     string;
      countryName: string;
      value:       number;
      baseline:    string;
      date:        Date;
      lastUpdated: Date;
  }

  export default class globalstockmarketWrapper {
    constructor(options: globalstockmarketOptions);

    execute(callback: (error: any, data: globalstockmarketResponse | null) => void): Promise<globalstockmarketResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: globalstockmarketResponse | null) => void): Promise<globalstockmarketResponse>;
    execute(query?: Record<string, any>): Promise<globalstockmarketResponse>;
  }
}
