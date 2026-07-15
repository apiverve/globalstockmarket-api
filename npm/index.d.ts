declare module '@apiverve/globalstockmarket' {
  export interface globalstockmarketOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface globalstockmarketResponse {
    status: string;
    error: string | null;
    data: GlobalStockMarketData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface GlobalStockMarketData {
      country:     null | string;
      countryName: null | string;
      baseline:    null | string;
      year:        number | null;
      month:       number | null;
      value:       number | null;
      date:        Date | null;
  }

  export default class globalstockmarketWrapper {
    constructor(options: globalstockmarketOptions);

    execute(callback: (error: any, data: globalstockmarketResponse | null) => void): Promise<globalstockmarketResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: globalstockmarketResponse | null) => void): Promise<globalstockmarketResponse>;
    execute(query?: Record<string, any>): Promise<globalstockmarketResponse>;
  }
}
