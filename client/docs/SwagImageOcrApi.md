# SwagImageOcrApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageOcrImageLinesWithLocation**](SwagImageOcrApi.md#imageOcrImageLinesWithLocation) | **POST** /ocr/image/to/lines-with-location | Convert a scanned image into words with location
[**imageOcrImageWordsWithLocation**](SwagImageOcrApi.md#imageOcrImageWordsWithLocation) | **POST** /ocr/image/to/words-with-location | Convert a scanned image into words with location
[**imageOcrPhotoRecognizeBusinessCard**](SwagImageOcrApi.md#imageOcrPhotoRecognizeBusinessCard) | **POST** /ocr/photo/recognize/business-card | Recognize a photo of a business card, extract key business information
[**imageOcrPhotoRecognizeForm**](SwagImageOcrApi.md#imageOcrPhotoRecognizeForm) | **POST** /ocr/photo/recognize/form | Recognize a photo of a form, extract key fields and business information
[**imageOcrPhotoRecognizeFormAdvanced**](SwagImageOcrApi.md#imageOcrPhotoRecognizeFormAdvanced) | **POST** /ocr/photo/recognize/form/advanced | Recognize a photo of a form, extract key fields using stored templates
[**imageOcrPhotoRecognizeReceipt**](SwagImageOcrApi.md#imageOcrPhotoRecognizeReceipt) | **POST** /ocr/photo/recognize/receipt | Recognize a photo of a receipt, extract key business information
[**imageOcrPhotoToText**](SwagImageOcrApi.md#imageOcrPhotoToText) | **POST** /ocr/photo/toText | Convert a photo of a document into text
[**imageOcrPhotoWordsWithLocation**](SwagImageOcrApi.md#imageOcrPhotoWordsWithLocation) | **POST** /ocr/photo/to/words-with-location | Convert a photo of a document or receipt into words with location
[**imageOcrPost**](SwagImageOcrApi.md#imageOcrPost) | **POST** /ocr/image/toText | Convert a scanned image into text


<a name="imageOcrImageLinesWithLocation"></a>
# **imageOcrImageLinesWithLocation**
> SwagImageToLinesWithLocationResult imageOcrImageLinesWithLocation(imageFile, language, preprocessing)

Convert a scanned image into words with location

Converts an uploaded image in common formats such as JPEG, PNG into lines/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'language' => 'language_example',
    'preprocessing' => 'preprocessing_example'
};

try {
    // cross your fingers
    SwagImageToLinesWithLocationResult result = api.imageOcrImageLinesWithLocation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). | [optional]

### Return type

[**SwagImageToLinesWithLocationResult**](SwagImageToLinesWithLocationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrImageWordsWithLocation"></a>
# **imageOcrImageWordsWithLocation**
> SwagImageToWordsWithLocationResult imageOcrImageWordsWithLocation(imageFile, language, preprocessing)

Convert a scanned image into words with location

Converts an uploaded image in common formats such as JPEG, PNG into words/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'language' => 'language_example',
    'preprocessing' => 'preprocessing_example'
};

try {
    // cross your fingers
    SwagImageToWordsWithLocationResult result = api.imageOcrImageWordsWithLocation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). | [optional]

### Return type

[**SwagImageToWordsWithLocationResult**](SwagImageToWordsWithLocationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPhotoRecognizeBusinessCard"></a>
# **imageOcrPhotoRecognizeBusinessCard**
> SwagBusinessCardRecognitionResult imageOcrPhotoRecognizeBusinessCard(imageFile)

Recognize a photo of a business card, extract key business information

Analyzes a photograph of a business card as input, and outputs key business information such as the name of the person, name of the business, the address of the business, the phone number, the email address and more.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    SwagBusinessCardRecognitionResult result = api.imageOcrPhotoRecognizeBusinessCard(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |

### Return type

[**SwagBusinessCardRecognitionResult**](SwagBusinessCardRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPhotoRecognizeForm"></a>
# **imageOcrPhotoRecognizeForm**
> SwagFormRecognitionResult imageOcrPhotoRecognizeForm(imageFile, formTemplateDefinition, recognitionMode, preprocessing, diagnostics, language)

Recognize a photo of a form, extract key fields and business information

Analyzes a photograph of a form as input, and outputs key business fields and information.  Customzie data to be extracted by defining fields for the form.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'formTemplateDefinition' => Object.getExample(),
    'recognitionMode' => 'recognitionMode_example',
    'preprocessing' => 'preprocessing_example',
    'diagnostics' => 'diagnostics_example',
    'language' => 'language_example'
};

try {
    // cross your fingers
    SwagFormRecognitionResult result = api.imageOcrPhotoRecognizeForm(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **formTemplateDefinition** | [**Object**](.md)| Form field definitions | [optional]
 **recognitionMode** | **String**| Optional, enable advanced recognition mode by specifying \&#39;Advanced\&#39;, enable handwriting recognition by specifying \&#39;EnableHandwriting\&#39;.  Default is disabled. | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image - including automatic unrotation of the image - before OCR is applied; this is recommended).  Set this to \&#39;None\&#39; if you do not want to use automatic image unrotation and enhancement. | [optional]
 **diagnostics** | **String**| Optional, diagnostics mode, default is \&#39;false\&#39;.  Possible values are \&#39;true\&#39; (will set DiagnosticImage to a diagnostic PNG image in the result), and \&#39;false\&#39; (no diagnostics are enabled; this is recommended for best performance). | [optional]
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]

### Return type

[**SwagFormRecognitionResult**](SwagFormRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPhotoRecognizeFormAdvanced"></a>
# **imageOcrPhotoRecognizeFormAdvanced**
> SwagFormRecognitionResult imageOcrPhotoRecognizeFormAdvanced(imageFile, bucketID, bucketSecretKey, recognitionMode, preprocessing, diagnostics)

Recognize a photo of a form, extract key fields using stored templates

Analyzes a photograph of a form as input, and outputs key business fields and information.  Customzie data to be extracted by defining fields for the form.  Uses template definitions stored in Cloudmersive Configuration; to configure stored templates in a configuration bucket, log into Cloudmersive Management Portal and navigate to Settings &amp;gt; API Configuration &amp;gt; Create Bucket

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'bucketID' => 'bucketID_example',
    'bucketSecretKey' => 'bucketSecretKey_example',
    'recognitionMode' => 'recognitionMode_example',
    'preprocessing' => 'preprocessing_example',
    'diagnostics' => 'diagnostics_example'
};

try {
    // cross your fingers
    SwagFormRecognitionResult result = api.imageOcrPhotoRecognizeFormAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **bucketID** | **String**| Bucket ID of the Configuration Bucket storing the form templates | [optional]
 **bucketSecretKey** | **String**| Bucket Secret Key of the Configuration Bucket storing the form templates | [optional]
 **recognitionMode** | **String**| Optional, enable advanced recognition mode by specifying \&#39;Advanced\&#39;, enable handwriting recognition by specifying \&#39;EnableHandwriting\&#39;.  Default is disabled. | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image - including automatic unrotation of the image - before OCR is applied; this is recommended).  Set this to \&#39;None\&#39; if you do not want to use automatic image unrotation and enhancement. | [optional]
 **diagnostics** | **String**| Optional, diagnostics mode, default is \&#39;false\&#39;.  Possible values are \&#39;true\&#39; (will set DiagnosticImage to a diagnostic PNG image in the result), and \&#39;false\&#39; (no diagnostics are enabled; this is recommended for best performance). | [optional]

### Return type

[**SwagFormRecognitionResult**](SwagFormRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPhotoRecognizeReceipt"></a>
# **imageOcrPhotoRecognizeReceipt**
> SwagReceiptRecognitionResult imageOcrPhotoRecognizeReceipt(imageFile, recognitionMode, language, preprocessing)

Recognize a photo of a receipt, extract key business information

Analyzes a photograph of a receipt as input, and outputs key business information such as the name of the business, the address of the business, the phone number of the business, the total of the receipt, the date of the receipt, and more.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'recognitionMode' => 'recognitionMode_example',
    'language' => 'language_example',
    'preprocessing' => 'preprocessing_example'
};

try {
    // cross your fingers
    SwagReceiptRecognitionResult result = api.imageOcrPhotoRecognizeReceipt(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **recognitionMode** | **String**| Optional, enable advanced recognition mode by specifying \&#39;Advanced\&#39;, enable handwriting recognition by specifying \&#39;EnableHandwriting\&#39;.  Default is disabled. | [optional]
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;None\&#39;.  Possible values are None (no preprocessing of the image), and \&#39;Advanced\&#39; (automatic image enhancement of the image before OCR is applied; this is recommended and needed to handle rotated receipts). | [optional]

### Return type

[**SwagReceiptRecognitionResult**](SwagReceiptRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPhotoToText"></a>
# **imageOcrPhotoToText**
> SwagImageToTextResponse imageOcrPhotoToText(imageFile, recognitionMode, language)

Convert a photo of a document into text

Converts an uploaded photo of a document in common formats such as JPEG, PNG into text via Optical Character Recognition.  This API is intended to be run on photos of documents, e.g. taken with a smartphone and supports cases where other content, such as a desk, are in the frame and the camera is crooked.  If you want to OCR a scanned image, use the image/toText API call instead as it is designed for scanned images.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'recognitionMode' => 'recognitionMode_example',
    'language' => 'language_example'
};

try {
    // cross your fingers
    SwagImageToTextResponse result = api.imageOcrPhotoToText(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **recognitionMode** | **String**| Optional; possible values are \&#39;Basic\&#39; which provides basic recognition and is not resillient to page rotation, skew or low quality images uses 1-2 API calls; \&#39;Normal\&#39; which provides highly fault tolerant OCR recognition uses 14-16 API calls; and \&#39;Advanced\&#39; which provides the highest quality and most fault-tolerant recognition uses 28-30 API calls.  Default recognition mode is \&#39;Advanced\&#39; | [optional]
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]

### Return type

[**SwagImageToTextResponse**](SwagImageToTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPhotoWordsWithLocation"></a>
# **imageOcrPhotoWordsWithLocation**
> SwagPhotoToWordsWithLocationResult imageOcrPhotoWordsWithLocation(imageFile, recognitionMode, language, preprocessing, diagnostics)

Convert a photo of a document or receipt into words with location

Converts a photo of a document or receipt in common formats such as JPEG, PNG into words/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on photographs of documents.  If you want to OCR scanned documents (e.g. taken with a scanner), be sure to use the image/toText API instead, as it is designed for that use case.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'recognitionMode' => 'recognitionMode_example',
    'language' => 'language_example',
    'preprocessing' => 'preprocessing_example',
    'diagnostics' => 'diagnostics_example'
};

try {
    // cross your fingers
    SwagPhotoToWordsWithLocationResult result = api.imageOcrPhotoWordsWithLocation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **recognitionMode** | **String**| Optional; possible values are \&#39;Normal\&#39; which provides highly fault tolerant OCR recognition uses 14-16 API calls; and \&#39;Advanced\&#39; which provides the highest quality and most fault-tolerant recognition uses 28-30 API calls.  Default recognition mode is \&#39;Advanced\&#39; | [optional]
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). | [optional]
 **diagnostics** | **String**| Optional, diagnostics mode, default is \&#39;false\&#39;.  Possible values are \&#39;true\&#39; (will set DiagnosticImage to a diagnostic PNG image in the result), and \&#39;false\&#39; (no diagnostics are enabled; this is recommended for best performance). | [optional]

### Return type

[**SwagPhotoToWordsWithLocationResult**](SwagPhotoToWordsWithLocationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="imageOcrPost"></a>
# **imageOcrPost**
> SwagImageToTextResponse imageOcrPost(imageFile, recognitionMode, language, preprocessing)

Convert a scanned image into text

Converts an uploaded image in common formats such as JPEG, PNG into text via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.

### Example
```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'imageFile' => Blob.valueOf('Sample text file\nContents'),
    'recognitionMode' => 'recognitionMode_example',
    'language' => 'language_example',
    'preprocessing' => 'preprocessing_example'
};

try {
    // cross your fingers
    SwagImageToTextResponse result = api.imageOcrPost(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **Blob**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. |
 **recognitionMode** | **String**| Optional; possible values are \&#39;Basic\&#39; which provides basic recognition and is not resillient to page rotation, skew or low quality images uses 1-2 API calls; \&#39;Normal\&#39; which provides highly fault tolerant OCR recognition uses 14-16 API calls; and \&#39;Advanced\&#39; which provides the highest quality and most fault-tolerant recognition uses 28-30 API calls.  Default recognition mode is \&#39;Advanced\&#39; | [optional]
 **language** | **String**| Optional, language of the input document, default is English (ENG).  Possible values are ENG (English), ARA (Arabic), ZHO (Chinese - Simplified), ZHO-HANT (Chinese - Traditional), ASM (Assamese), AFR (Afrikaans), AMH (Amharic), AZE (Azerbaijani), AZE-CYRL (Azerbaijani - Cyrillic), BEL (Belarusian), BEN (Bengali), BOD (Tibetan), BOS (Bosnian), BUL (Bulgarian), CAT (Catalan; Valencian), CEB (Cebuano), CES (Czech), CHR (Cherokee), CYM (Welsh), DAN (Danish), DEU (German), DZO (Dzongkha), ELL (Greek), ENM (Archaic/Middle English), EPO (Esperanto), EST (Estonian), EUS (Basque), FAS (Persian), FIN (Finnish), FRA (French), FRK (Frankish), FRM (Middle-French), GLE (Irish), GLG (Galician), GRC (Ancient Greek), HAT (Hatian), HEB (Hebrew), HIN (Hindi), HRV (Croatian), HUN (Hungarian), IKU (Inuktitut), IND (Indonesian), ISL (Icelandic), ITA (Italian), ITA-OLD (Old - Italian), JAV (Javanese), JPN (Japanese), KAN (Kannada), KAT (Georgian), KAT-OLD (Old-Georgian), KAZ (Kazakh), KHM (Central Khmer), KIR (Kirghiz), KOR (Korean), KUR (Kurdish), LAO (Lao), LAT (Latin), LAV (Latvian), LIT (Lithuanian), MAL (Malayalam), MAR (Marathi), MKD (Macedonian), MLT (Maltese), MSA (Malay), MYA (Burmese), NEP (Nepali), NLD (Dutch), NOR (Norwegian), ORI (Oriya), PAN (Panjabi), POL (Polish), POR (Portuguese), PUS (Pushto), RON (Romanian), RUS (Russian), SAN (Sanskrit), SIN (Sinhala), SLK (Slovak), SLV (Slovenian), SPA (Spanish), SPA-OLD (Old Spanish), SQI (Albanian), SRP (Serbian), SRP-LAT (Latin Serbian), SWA (Swahili), SWE (Swedish), SYR (Syriac), TAM (Tamil), TEL (Telugu), TGK (Tajik), TGL (Tagalog), THA (Thai), TIR (Tigrinya), TUR (Turkish), UIG (Uighur), UKR (Ukrainian), URD (Urdu), UZB (Uzbek), UZB-CYR (Cyrillic Uzbek), VIE (Vietnamese), YID (Yiddish) | [optional]
 **preprocessing** | **String**| Optional, preprocessing mode, default is \&#39;Auto\&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image before OCR is applied; this is recommended). | [optional]

### Return type

[**SwagImageToTextResponse**](SwagImageToTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

