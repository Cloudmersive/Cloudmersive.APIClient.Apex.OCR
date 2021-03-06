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
 * Result of an image to lines-with-location OCR operation
 */
public class SwagImageToLinesWithLocationResult implements Swagger.MappedProperties {
    /**
     * True if successful, false otherwise
     * @return successful
     */
    public Boolean successful { get; set; }

    /**
     * Words in the image
     * @return lines
     */
    public List<SwagOcrLineElement> lines { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Successful' => 'successful',
        'Lines' => 'lines'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagImageToLinesWithLocationResult() {
        lines = new List<SwagOcrLineElement>();
    }

    public static SwagImageToLinesWithLocationResult getExample() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult = new SwagImageToLinesWithLocationResult();
        imageToLinesWithLocationResult.successful = true;
        imageToLinesWithLocationResult.lines = new List<SwagOcrLineElement>{SwagOcrLineElement.getExample()};
        return imageToLinesWithLocationResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagImageToLinesWithLocationResult) {
            SwagImageToLinesWithLocationResult imageToLinesWithLocationResult = (SwagImageToLinesWithLocationResult) obj;
            return this.successful == imageToLinesWithLocationResult.successful
                && this.lines == imageToLinesWithLocationResult.lines;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (successful == null ? 0 : System.hashCode(successful));
        hashCode = (17 * hashCode) + (lines == null ? 0 : System.hashCode(lines));
        return hashCode;
    }
}

