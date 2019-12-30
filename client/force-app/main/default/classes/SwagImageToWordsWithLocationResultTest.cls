@isTest
private class SwagImageToWordsWithLocationResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = imageToWordsWithLocationResult1;
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult3 = new SwagImageToWordsWithLocationResult();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult4 = imageToWordsWithLocationResult3;

        System.assert(imageToWordsWithLocationResult1.equals(imageToWordsWithLocationResult2));
        System.assert(imageToWordsWithLocationResult2.equals(imageToWordsWithLocationResult1));
        System.assert(imageToWordsWithLocationResult1.equals(imageToWordsWithLocationResult1));
        System.assert(imageToWordsWithLocationResult3.equals(imageToWordsWithLocationResult4));
        System.assert(imageToWordsWithLocationResult4.equals(imageToWordsWithLocationResult3));
        System.assert(imageToWordsWithLocationResult3.equals(imageToWordsWithLocationResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult3 = new SwagImageToWordsWithLocationResult();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult4 = new SwagImageToWordsWithLocationResult();

        System.assert(imageToWordsWithLocationResult1.equals(imageToWordsWithLocationResult2));
        System.assert(imageToWordsWithLocationResult2.equals(imageToWordsWithLocationResult1));
        System.assert(imageToWordsWithLocationResult3.equals(imageToWordsWithLocationResult4));
        System.assert(imageToWordsWithLocationResult4.equals(imageToWordsWithLocationResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = new SwagImageToWordsWithLocationResult();

        System.assertEquals(false, imageToWordsWithLocationResult1.equals(imageToWordsWithLocationResult2));
        System.assertEquals(false, imageToWordsWithLocationResult2.equals(imageToWordsWithLocationResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = new SwagImageToWordsWithLocationResult();

        System.assertEquals(false, imageToWordsWithLocationResult1.equals('foo'));
        System.assertEquals(false, imageToWordsWithLocationResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = new SwagImageToWordsWithLocationResult();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult3;

        System.assertEquals(false, imageToWordsWithLocationResult1.equals(imageToWordsWithLocationResult3));
        System.assertEquals(false, imageToWordsWithLocationResult2.equals(imageToWordsWithLocationResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = new SwagImageToWordsWithLocationResult();

        System.assertEquals(imageToWordsWithLocationResult1.hashCode(), imageToWordsWithLocationResult1.hashCode());
        System.assertEquals(imageToWordsWithLocationResult2.hashCode(), imageToWordsWithLocationResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult1 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult2 = SwagImageToWordsWithLocationResult.getExample();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult3 = new SwagImageToWordsWithLocationResult();
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult4 = new SwagImageToWordsWithLocationResult();

        System.assert(imageToWordsWithLocationResult1.equals(imageToWordsWithLocationResult2));
        System.assert(imageToWordsWithLocationResult3.equals(imageToWordsWithLocationResult4));
        System.assertEquals(imageToWordsWithLocationResult1.hashCode(), imageToWordsWithLocationResult2.hashCode());
        System.assertEquals(imageToWordsWithLocationResult3.hashCode(), imageToWordsWithLocationResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult = new SwagImageToWordsWithLocationResult();
        Map<String, String> propertyMappings = imageToWordsWithLocationResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('words', propertyMappings.get('Words'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagImageToWordsWithLocationResult imageToWordsWithLocationResult = new SwagImageToWordsWithLocationResult();
        System.assertEquals(new List<SwagOcrWordElement>(), imageToWordsWithLocationResult.words);
        System.assertEquals(null, imageToWordsWithLocationResult.successful);
    }
}
