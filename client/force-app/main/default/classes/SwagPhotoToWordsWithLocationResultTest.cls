@isTest
private class SwagPhotoToWordsWithLocationResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = photoToWordsWithLocationResult1;
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult3 = new SwagPhotoToWordsWithLocationResult();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult4 = photoToWordsWithLocationResult3;

        System.assert(photoToWordsWithLocationResult1.equals(photoToWordsWithLocationResult2));
        System.assert(photoToWordsWithLocationResult2.equals(photoToWordsWithLocationResult1));
        System.assert(photoToWordsWithLocationResult1.equals(photoToWordsWithLocationResult1));
        System.assert(photoToWordsWithLocationResult3.equals(photoToWordsWithLocationResult4));
        System.assert(photoToWordsWithLocationResult4.equals(photoToWordsWithLocationResult3));
        System.assert(photoToWordsWithLocationResult3.equals(photoToWordsWithLocationResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult3 = new SwagPhotoToWordsWithLocationResult();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult4 = new SwagPhotoToWordsWithLocationResult();

        System.assert(photoToWordsWithLocationResult1.equals(photoToWordsWithLocationResult2));
        System.assert(photoToWordsWithLocationResult2.equals(photoToWordsWithLocationResult1));
        System.assert(photoToWordsWithLocationResult3.equals(photoToWordsWithLocationResult4));
        System.assert(photoToWordsWithLocationResult4.equals(photoToWordsWithLocationResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = new SwagPhotoToWordsWithLocationResult();

        System.assertEquals(false, photoToWordsWithLocationResult1.equals(photoToWordsWithLocationResult2));
        System.assertEquals(false, photoToWordsWithLocationResult2.equals(photoToWordsWithLocationResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = new SwagPhotoToWordsWithLocationResult();

        System.assertEquals(false, photoToWordsWithLocationResult1.equals('foo'));
        System.assertEquals(false, photoToWordsWithLocationResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = new SwagPhotoToWordsWithLocationResult();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult3;

        System.assertEquals(false, photoToWordsWithLocationResult1.equals(photoToWordsWithLocationResult3));
        System.assertEquals(false, photoToWordsWithLocationResult2.equals(photoToWordsWithLocationResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = new SwagPhotoToWordsWithLocationResult();

        System.assertEquals(photoToWordsWithLocationResult1.hashCode(), photoToWordsWithLocationResult1.hashCode());
        System.assertEquals(photoToWordsWithLocationResult2.hashCode(), photoToWordsWithLocationResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult1 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult2 = SwagPhotoToWordsWithLocationResult.getExample();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult3 = new SwagPhotoToWordsWithLocationResult();
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult4 = new SwagPhotoToWordsWithLocationResult();

        System.assert(photoToWordsWithLocationResult1.equals(photoToWordsWithLocationResult2));
        System.assert(photoToWordsWithLocationResult3.equals(photoToWordsWithLocationResult4));
        System.assertEquals(photoToWordsWithLocationResult1.hashCode(), photoToWordsWithLocationResult2.hashCode());
        System.assertEquals(photoToWordsWithLocationResult3.hashCode(), photoToWordsWithLocationResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult = new SwagPhotoToWordsWithLocationResult();
        Map<String, String> propertyMappings = photoToWordsWithLocationResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('textElements', propertyMappings.get('TextElements'));
        System.assertEquals('diagnosticImage', propertyMappings.get('DiagnosticImage'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPhotoToWordsWithLocationResult photoToWordsWithLocationResult = new SwagPhotoToWordsWithLocationResult();
        System.assertEquals(new List<SwagOcrPhotoTextElement>(), photoToWordsWithLocationResult.textElements);
        System.assertEquals(null, photoToWordsWithLocationResult.successful);
        System.assertEquals(null, photoToWordsWithLocationResult.diagnosticImage);
    }
}
