/*
 * ocrapi
 * The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

public class SwagPdfOcrApi {
    SwagClient client;

    public SwagPdfOcrApi(SwagClient client) {
        this.client = client;
    }

    public SwagPdfOcrApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Convert a PDF into text lines with location
     * Converts a PDF into lines/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     * @param imageFile PDF file to perform OCR on. (required)
     * @param language Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) (optional)
     * @param preprocessing Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). (optional)
     * @return SwagPdfToLinesWithLocationResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagPdfToLinesWithLocationResult pdfOcrPdfToLinesWithLocation(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagPdfToLinesWithLocationResult) client.invoke(
            'POST', '/ocr/pdf/to/lines-with-location', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'language' => (String) params.get('language'),
                'preprocessing' => (String) params.get('preprocessing')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagPdfToLinesWithLocationResult.class
        );
    }
    /**
     * Convert a PDF into words with location
     * Converts a PDF into words/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     * @param imageFile PDF file to perform OCR on. (required)
     * @param language Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) (optional)
     * @param preprocessing Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). (optional)
     * @return SwagPdfToWordsWithLocationResult
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagPdfToWordsWithLocationResult pdfOcrPdfToWordsWithLocation(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagPdfToWordsWithLocationResult) client.invoke(
            'POST', '/ocr/pdf/to/words-with-location', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'language' => (String) params.get('language'),
                'preprocessing' => (String) params.get('preprocessing')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagPdfToWordsWithLocationResult.class
        );
    }
    /**
     * Converts an uploaded PDF file into text via Optical Character Recognition.
     * 
     * @param imageFile PDF file to perform OCR on. (required)
     * @param language Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) (optional)
     * @param preprocessing Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). (optional)
     * @return SwagPdfToTextResponse
     * @throws Swagger.ApiException if fails to make API call
     */
    public SwagPdfToTextResponse pdfOcrPost(Map<String, Object> params) {
        client.assertNotNull(params.get('imageFile'), 'imageFile');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        // cast form params to verify their expected type
        form.addAll(client.makeParam('imageFile', (Blob) params.get('imageFile')));

        return (SwagPdfToTextResponse) client.invoke(
            'POST', '/ocr/pdf/toText', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'language' => (String) params.get('language'),
                'preprocessing' => (String) params.get('preprocessing')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/x-www-form-urlencoded' },
            new List<String> { 'Apikey' },
            SwagPdfToTextResponse.class
        );
    }
}