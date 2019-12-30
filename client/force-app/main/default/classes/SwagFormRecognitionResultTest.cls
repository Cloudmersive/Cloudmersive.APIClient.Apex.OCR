@isTest
private class SwagFormRecognitionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = formRecognitionResult1;
        SwagFormRecognitionResult formRecognitionResult3 = new SwagFormRecognitionResult();
        SwagFormRecognitionResult formRecognitionResult4 = formRecognitionResult3;

        System.assert(formRecognitionResult1.equals(formRecognitionResult2));
        System.assert(formRecognitionResult2.equals(formRecognitionResult1));
        System.assert(formRecognitionResult1.equals(formRecognitionResult1));
        System.assert(formRecognitionResult3.equals(formRecognitionResult4));
        System.assert(formRecognitionResult4.equals(formRecognitionResult3));
        System.assert(formRecognitionResult3.equals(formRecognitionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult3 = new SwagFormRecognitionResult();
        SwagFormRecognitionResult formRecognitionResult4 = new SwagFormRecognitionResult();

        System.assert(formRecognitionResult1.equals(formRecognitionResult2));
        System.assert(formRecognitionResult2.equals(formRecognitionResult1));
        System.assert(formRecognitionResult3.equals(formRecognitionResult4));
        System.assert(formRecognitionResult4.equals(formRecognitionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = new SwagFormRecognitionResult();

        System.assertEquals(false, formRecognitionResult1.equals(formRecognitionResult2));
        System.assertEquals(false, formRecognitionResult2.equals(formRecognitionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = new SwagFormRecognitionResult();

        System.assertEquals(false, formRecognitionResult1.equals('foo'));
        System.assertEquals(false, formRecognitionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = new SwagFormRecognitionResult();
        SwagFormRecognitionResult formRecognitionResult3;

        System.assertEquals(false, formRecognitionResult1.equals(formRecognitionResult3));
        System.assertEquals(false, formRecognitionResult2.equals(formRecognitionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = new SwagFormRecognitionResult();

        System.assertEquals(formRecognitionResult1.hashCode(), formRecognitionResult1.hashCode());
        System.assertEquals(formRecognitionResult2.hashCode(), formRecognitionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFormRecognitionResult formRecognitionResult1 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult2 = SwagFormRecognitionResult.getExample();
        SwagFormRecognitionResult formRecognitionResult3 = new SwagFormRecognitionResult();
        SwagFormRecognitionResult formRecognitionResult4 = new SwagFormRecognitionResult();

        System.assert(formRecognitionResult1.equals(formRecognitionResult2));
        System.assert(formRecognitionResult3.equals(formRecognitionResult4));
        System.assertEquals(formRecognitionResult1.hashCode(), formRecognitionResult2.hashCode());
        System.assertEquals(formRecognitionResult3.hashCode(), formRecognitionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFormRecognitionResult formRecognitionResult = new SwagFormRecognitionResult();
        Map<String, String> propertyMappings = formRecognitionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('fieldValueExtractionResult', propertyMappings.get('FieldValueExtractionResult'));
        System.assertEquals('tableValueExtractionResults', propertyMappings.get('TableValueExtractionResults'));
        System.assertEquals('diagnostics', propertyMappings.get('Diagnostics'));
        System.assertEquals('bestMatchFormSettingName', propertyMappings.get('BestMatchFormSettingName'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFormRecognitionResult formRecognitionResult = new SwagFormRecognitionResult();
        System.assertEquals(new List<SwagFieldResult>(), formRecognitionResult.fieldValueExtractionResult);
        System.assertEquals(new List<SwagTableResult>(), formRecognitionResult.tableValueExtractionResults);
        System.assertEquals(new List<String>(), formRecognitionResult.diagnostics);
        System.assertEquals(null, formRecognitionResult.successful);
        System.assertEquals(null, formRecognitionResult.bestMatchFormSettingName);
    }
}
