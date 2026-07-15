declare module '@apiverve/airlinelookup' {
  export interface airlinelookupOptions {
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

  export interface airlinelookupResponse {
    status: string;
    error: string | null;
    data: AirlineLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AirlineLookupData {
      name:      null | string;
      alias:     null;
      iata:      null | string;
      icao:      null | string;
      callsign:  null | string;
      country:   null | string;
      id:        null | string;
      islowcost: boolean | null;
      logourl:   null | string;
  }

  export default class airlinelookupWrapper {
    constructor(options: airlinelookupOptions);

    execute(callback: (error: any, data: airlinelookupResponse | null) => void): Promise<airlinelookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airlinelookupResponse | null) => void): Promise<airlinelookupResponse>;
    execute(query?: Record<string, any>): Promise<airlinelookupResponse>;
  }
}
