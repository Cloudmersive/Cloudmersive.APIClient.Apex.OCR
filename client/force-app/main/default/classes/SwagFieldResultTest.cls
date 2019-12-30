@isTest
private class SwagFieldResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = fieldResult1;
        SwagFieldResult fieldResult3 = new SwagFieldResult();
        SwagFieldResult fieldResult4 = fieldResult3;

        System.assert(fieldResult1.equals(fieldResult2));
        System.assert(fieldResult2.equals(fieldResult1));
        System.assert(fieldResult1.equals(fieldResult1));
        System.assert(fieldResult3.equals(fieldResult4));
        System.assert(fieldResult4.equals(fieldResult3));
        System.assert(fieldResult3.equals(fieldResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult3 = new SwagFieldResult();
        SwagFieldResult fieldResult4 = new SwagFieldResult();

        System.assert(fieldResult1.equals(fieldResult2));
        System.assert(fieldResult2.equals(fieldResult1));
        System.assert(fieldResult3.equals(fieldResult4));
        System.assert(fieldResult4.equals(fieldResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = new SwagFieldResult();

        System.assertEquals(false, fieldResult1.equals(fieldResult2));
        System.assertEquals(false, fieldResult2.equals(fieldResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = new SwagFieldResult();

        System.assertEquals(false, fieldResult1.equals('foo'));
        System.assertEquals(false, fieldResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = new SwagFieldResult();
        SwagFieldResult fieldResult3;

        System.assertEquals(false, fieldResult1.equals(fieldResult3));
        System.assertEquals(false, fieldResult2.equals(fieldResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = new SwagFieldResult();

        System.assertEquals(fieldResult1.hashCode(), fieldResult1.hashCode());
        System.assertEquals(fieldResult2.hashCode(), fieldResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFieldResult fieldResult1 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult2 = SwagFieldResult.getExample();
        SwagFieldResult fieldResult3 = new SwagFieldResult();
        SwagFieldResult fieldResult4 = new SwagFieldResult();

        System.assert(fieldResult1.equals(fieldResult2));
        System.assert(fieldResult3.equals(fieldResult4));
        System.assertEquals(fieldResult1.hashCode(), fieldResult2.hashCode());
        System.assertEquals(fieldResult3.hashCode(), fieldResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFieldResult fieldResult = new SwagFieldResult();
        Map<String, String> propertyMappings = fieldResult.getPropertyMappings();
        System.assertEquals('targetField', propertyMappings.get('TargetField'));
        System.assertEquals('fieldValues', propertyMappings.get('FieldValues'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFieldResult fieldResult = new SwagFieldResult();
        System.assertEquals(new List<SwagOcrPhotoTextElement>(), fieldResult.fieldValues);
        System.assertEquals(null, fieldResult.targetField);
    }
}
