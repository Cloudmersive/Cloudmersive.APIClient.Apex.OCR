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

/**
 * Response from an OCR to words with location operation.  Includes the confience rating and converted text result, along with the locations of the words in the pages.
 */
public class SwagPdfToWordsWithLocationResult implements Swagger.MappedProperties {
    /**
     * True if successful, false otherwise
     * @return successful
     */
    public Boolean successful { get; set; }

    /**
     * OCR page results
     * @return ocrPages
     */
    public List<SwagOcrPageResultWithWordsWithLocati> ocrPages { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Successful' => 'successful',
        'OcrPages' => 'ocrPages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagPdfToWordsWithLocationResult() {
        ocrPages = new List<SwagOcrPageResultWithWordsWithLocati>();
    }

    public static SwagPdfToWordsWithLocationResult getExample() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult = new SwagPdfToWordsWithLocationResult();
        pdfToWordsWithLocationResult.successful = true;
        pdfToWordsWithLocationResult.ocrPages = new List<SwagOcrPageResultWithWordsWithLocati>{SwagOcrPageResultWithWordsWithLocati.getExample()};
        return pdfToWordsWithLocationResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagPdfToWordsWithLocationResult) {
            SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult = (SwagPdfToWordsWithLocationResult) obj;
            return this.successful == pdfToWordsWithLocationResult.successful
                && this.ocrPages == pdfToWordsWithLocationResult.ocrPages;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (successful == null ? 0 : System.hashCode(successful));
        hashCode = (17 * hashCode) + (ocrPages == null ? 0 : System.hashCode(ocrPages));
        return hashCode;
    }
}
