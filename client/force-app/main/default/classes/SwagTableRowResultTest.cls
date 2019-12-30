@isTest
private class SwagTableRowResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = tableRowResult1;
        SwagTableRowResult tableRowResult3 = new SwagTableRowResult();
        SwagTableRowResult tableRowResult4 = tableRowResult3;

        System.assert(tableRowResult1.equals(tableRowResult2));
        System.assert(tableRowResult2.equals(tableRowResult1));
        System.assert(tableRowResult1.equals(tableRowResult1));
        System.assert(tableRowResult3.equals(tableRowResult4));
        System.assert(tableRowResult4.equals(tableRowResult3));
        System.assert(tableRowResult3.equals(tableRowResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult3 = new SwagTableRowResult();
        SwagTableRowResult tableRowResult4 = new SwagTableRowResult();

        System.assert(tableRowResult1.equals(tableRowResult2));
        System.assert(tableRowResult2.equals(tableRowResult1));
        System.assert(tableRowResult3.equals(tableRowResult4));
        System.assert(tableRowResult4.equals(tableRowResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = new SwagTableRowResult();

        System.assertEquals(false, tableRowResult1.equals(tableRowResult2));
        System.assertEquals(false, tableRowResult2.equals(tableRowResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = new SwagTableRowResult();

        System.assertEquals(false, tableRowResult1.equals('foo'));
        System.assertEquals(false, tableRowResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = new SwagTableRowResult();
        SwagTableRowResult tableRowResult3;

        System.assertEquals(false, tableRowResult1.equals(tableRowResult3));
        System.assertEquals(false, tableRowResult2.equals(tableRowResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = new SwagTableRowResult();

        System.assertEquals(tableRowResult1.hashCode(), tableRowResult1.hashCode());
        System.assertEquals(tableRowResult2.hashCode(), tableRowResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagTableRowResult tableRowResult1 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult2 = SwagTableRowResult.getExample();
        SwagTableRowResult tableRowResult3 = new SwagTableRowResult();
        SwagTableRowResult tableRowResult4 = new SwagTableRowResult();

        System.assert(tableRowResult1.equals(tableRowResult2));
        System.assert(tableRowResult3.equals(tableRowResult4));
        System.assertEquals(tableRowResult1.hashCode(), tableRowResult2.hashCode());
        System.assertEquals(tableRowResult3.hashCode(), tableRowResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagTableRowResult tableRowResult = new SwagTableRowResult();
        Map<String, String> propertyMappings = tableRowResult.getPropertyMappings();
        System.assertEquals('tableRowCellsResult', propertyMappings.get('TableRowCellsResult'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagTableRowResult tableRowResult = new SwagTableRowResult();
        System.assertEquals(new List<SwagTableCellResult>(), tableRowResult.tableRowCellsResult);
    }
}
