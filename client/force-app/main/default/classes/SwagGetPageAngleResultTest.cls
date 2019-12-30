@isTest
private class SwagGetPageAngleResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = getPageAngleResult1;
        SwagGetPageAngleResult getPageAngleResult3 = new SwagGetPageAngleResult();
        SwagGetPageAngleResult getPageAngleResult4 = getPageAngleResult3;

        System.assert(getPageAngleResult1.equals(getPageAngleResult2));
        System.assert(getPageAngleResult2.equals(getPageAngleResult1));
        System.assert(getPageAngleResult1.equals(getPageAngleResult1));
        System.assert(getPageAngleResult3.equals(getPageAngleResult4));
        System.assert(getPageAngleResult4.equals(getPageAngleResult3));
        System.assert(getPageAngleResult3.equals(getPageAngleResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult3 = new SwagGetPageAngleResult();
        SwagGetPageAngleResult getPageAngleResult4 = new SwagGetPageAngleResult();

        System.assert(getPageAngleResult1.equals(getPageAngleResult2));
        System.assert(getPageAngleResult2.equals(getPageAngleResult1));
        System.assert(getPageAngleResult3.equals(getPageAngleResult4));
        System.assert(getPageAngleResult4.equals(getPageAngleResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = new SwagGetPageAngleResult();

        System.assertEquals(false, getPageAngleResult1.equals(getPageAngleResult2));
        System.assertEquals(false, getPageAngleResult2.equals(getPageAngleResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = new SwagGetPageAngleResult();

        System.assertEquals(false, getPageAngleResult1.equals('foo'));
        System.assertEquals(false, getPageAngleResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = new SwagGetPageAngleResult();
        SwagGetPageAngleResult getPageAngleResult3;

        System.assertEquals(false, getPageAngleResult1.equals(getPageAngleResult3));
        System.assertEquals(false, getPageAngleResult2.equals(getPageAngleResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = new SwagGetPageAngleResult();

        System.assertEquals(getPageAngleResult1.hashCode(), getPageAngleResult1.hashCode());
        System.assertEquals(getPageAngleResult2.hashCode(), getPageAngleResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetPageAngleResult getPageAngleResult1 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult2 = SwagGetPageAngleResult.getExample();
        SwagGetPageAngleResult getPageAngleResult3 = new SwagGetPageAngleResult();
        SwagGetPageAngleResult getPageAngleResult4 = new SwagGetPageAngleResult();

        System.assert(getPageAngleResult1.equals(getPageAngleResult2));
        System.assert(getPageAngleResult3.equals(getPageAngleResult4));
        System.assertEquals(getPageAngleResult1.hashCode(), getPageAngleResult2.hashCode());
        System.assertEquals(getPageAngleResult3.hashCode(), getPageAngleResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGetPageAngleResult getPageAngleResult = new SwagGetPageAngleResult();
        Map<String, String> propertyMappings = getPageAngleResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('angle', propertyMappings.get('Angle'));
    }
}
