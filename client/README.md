# ocrapi API Client

The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagImageOcrApi api = new SwagImageOcrApi();
SwagClient client = api.getClient();


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

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagImageOcrApi* | [**imageOcrImageLinesWithLocation**](docs/SwagImageOcrApi.md#imageOcrImageLinesWithLocation) | **POST** /ocr/image/to/lines-with-location | Convert a scanned image into words with location
*SwagImageOcrApi* | [**imageOcrImageWordsWithLocation**](docs/SwagImageOcrApi.md#imageOcrImageWordsWithLocation) | **POST** /ocr/image/to/words-with-location | Convert a scanned image into words with location
*SwagImageOcrApi* | [**imageOcrPhotoRecognizeBusinessCard**](docs/SwagImageOcrApi.md#imageOcrPhotoRecognizeBusinessCard) | **POST** /ocr/photo/recognize/business-card | Recognize a photo of a business card, extract key business information
*SwagImageOcrApi* | [**imageOcrPhotoRecognizeForm**](docs/SwagImageOcrApi.md#imageOcrPhotoRecognizeForm) | **POST** /ocr/photo/recognize/form | Recognize a photo of a form, extract key fields and business information
*SwagImageOcrApi* | [**imageOcrPhotoRecognizeFormAdvanced**](docs/SwagImageOcrApi.md#imageOcrPhotoRecognizeFormAdvanced) | **POST** /ocr/photo/recognize/form/advanced | Recognize a photo of a form, extract key fields using stored templates
*SwagImageOcrApi* | [**imageOcrPhotoRecognizeReceipt**](docs/SwagImageOcrApi.md#imageOcrPhotoRecognizeReceipt) | **POST** /ocr/photo/recognize/receipt | Recognize a photo of a receipt, extract key business information
*SwagImageOcrApi* | [**imageOcrPhotoToText**](docs/SwagImageOcrApi.md#imageOcrPhotoToText) | **POST** /ocr/photo/toText | Convert a photo of a document into text
*SwagImageOcrApi* | [**imageOcrPhotoWordsWithLocation**](docs/SwagImageOcrApi.md#imageOcrPhotoWordsWithLocation) | **POST** /ocr/photo/to/words-with-location | Convert a photo of a document or receipt into words with location
*SwagImageOcrApi* | [**imageOcrPost**](docs/SwagImageOcrApi.md#imageOcrPost) | **POST** /ocr/image/toText | Convert a scanned image into text
*SwagPdfOcrApi* | [**pdfOcrPdfToLinesWithLocation**](docs/SwagPdfOcrApi.md#pdfOcrPdfToLinesWithLocation) | **POST** /ocr/pdf/to/lines-with-location | Convert a PDF into text lines with location
*SwagPdfOcrApi* | [**pdfOcrPdfToWordsWithLocation**](docs/SwagPdfOcrApi.md#pdfOcrPdfToWordsWithLocation) | **POST** /ocr/pdf/to/words-with-location | Convert a PDF into words with location
*SwagPdfOcrApi* | [**pdfOcrPost**](docs/SwagPdfOcrApi.md#pdfOcrPost) | **POST** /ocr/pdf/toText | Converts an uploaded PDF file into text via Optical Character Recognition.
*SwagPreprocessingApi* | [**preprocessingBinarize**](docs/SwagPreprocessingApi.md#preprocessingBinarize) | **POST** /ocr/preprocessing/image/binarize | Convert an image of text into a binarized (light and dark) view
*SwagPreprocessingApi* | [**preprocessingBinarizeAdvanced**](docs/SwagPreprocessingApi.md#preprocessingBinarizeAdvanced) | **POST** /ocr/preprocessing/image/binarize/advanced | Convert an image of text into a binary (light and dark) view with ML
*SwagPreprocessingApi* | [**preprocessingGetPageAngle**](docs/SwagPreprocessingApi.md#preprocessingGetPageAngle) | **POST** /ocr/preprocessing/image/get-page-angle | Get the angle of the page / document / receipt
*SwagPreprocessingApi* | [**preprocessingUnrotate**](docs/SwagPreprocessingApi.md#preprocessingUnrotate) | **POST** /ocr/preprocessing/image/unrotate | Detect and unrotate a document image
*SwagPreprocessingApi* | [**preprocessingUnrotateAdvanced**](docs/SwagPreprocessingApi.md#preprocessingUnrotateAdvanced) | **POST** /ocr/preprocessing/image/unrotate/advanced | Detect and unrotate a document image (advanced)
*SwagPreprocessingApi* | [**preprocessingUnskew**](docs/SwagPreprocessingApi.md#preprocessingUnskew) | **POST** /ocr/preprocessing/image/unskew | Detect and unskew a photo of a document
*SwagReceiptsApi* | [**receiptsPhotoToCSV**](docs/SwagReceiptsApi.md#receiptsPhotoToCSV) | **POST** /ocr/receipts/photo/to/csv | Convert a photo of a receipt into a CSV file containing structured information from the receipt


## Documentation for Models

 - [SwagBusinessCardRecognitionResult](docs/SwagBusinessCardRecognitionResult.md)
 - [SwagFieldResult](docs/SwagFieldResult.md)
 - [SwagFormDefinitionTemplate](docs/SwagFormDefinitionTemplate.md)
 - [SwagFormFieldDefinition](docs/SwagFormFieldDefinition.md)
 - [SwagFormRecognitionResult](docs/SwagFormRecognitionResult.md)
 - [SwagFormTableColumnDefinition](docs/SwagFormTableColumnDefinition.md)
 - [SwagFormTableDefinition](docs/SwagFormTableDefinition.md)
 - [SwagGetPageAngleResult](docs/SwagGetPageAngleResult.md)
 - [SwagImageToLinesWithLocationResult](docs/SwagImageToLinesWithLocationResult.md)
 - [SwagImageToTextResponse](docs/SwagImageToTextResponse.md)
 - [SwagImageToWordsWithLocationResult](docs/SwagImageToWordsWithLocationResult.md)
 - [SwagOcrLineElement](docs/SwagOcrLineElement.md)
 - [SwagOcrPageResult](docs/SwagOcrPageResult.md)
 - [SwagOcrPageResultWithLinesWithLocati](docs/SwagOcrPageResultWithLinesWithLocati.md)
 - [SwagOcrPageResultWithWordsWithLocati](docs/SwagOcrPageResultWithWordsWithLocati.md)
 - [SwagOcrPhotoTextElement](docs/SwagOcrPhotoTextElement.md)
 - [SwagOcrWordElement](docs/SwagOcrWordElement.md)
 - [SwagPdfToLinesWithLocationResult](docs/SwagPdfToLinesWithLocationResult.md)
 - [SwagPdfToTextResponse](docs/SwagPdfToTextResponse.md)
 - [SwagPdfToWordsWithLocationResult](docs/SwagPdfToWordsWithLocationResult.md)
 - [SwagPhotoToWordsWithLocationResult](docs/SwagPhotoToWordsWithLocationResult.md)
 - [SwagPoint](docs/SwagPoint.md)
 - [SwagReceiptLineItem](docs/SwagReceiptLineItem.md)
 - [SwagReceiptRecognitionResult](docs/SwagReceiptRecognitionResult.md)
 - [SwagTableCellResult](docs/SwagTableCellResult.md)
 - [SwagTableResult](docs/SwagTableResult.md)
 - [SwagTableRowResult](docs/SwagTableRowResult.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



