@isTest
private class SwagTableCellResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = tableCellResult1;
        SwagTableCellResult tableCellResult3 = new SwagTableCellResult();
        SwagTableCellResult tableCellResult4 = tableCellResult3;

        System.assert(tableCellResult1.equals(tableCellResult2));
        System.assert(tableCellResult2.equals(tableCellResult1));
        System.assert(tableCellResult1.equals(tableCellResult1));
        System.assert(tableCellResult3.equals(tableCellResult4));
        System.assert(tableCellResult4.equals(tableCellResult3));
        System.assert(tableCellResult3.equals(tableCellResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult3 = new SwagTableCellResult();
        SwagTableCellResult tableCellResult4 = new SwagTableCellResult();

        System.assert(tableCellResult1.equals(tableCellResult2));
        System.assert(tableCellResult2.equals(tableCellResult1));
        System.assert(tableCellResult3.equals(tableCellResult4));
        System.assert(tableCellResult4.equals(tableCellResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = new SwagTableCellResult();

        System.assertEquals(false, tableCellResult1.equals(tableCellResult2));
        System.assertEquals(false, tableCellResult2.equals(tableCellResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = new SwagTableCellResult();

        System.assertEquals(false, tableCellResult1.equals('foo'));
        System.assertEquals(false, tableCellResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = new SwagTableCellResult();
        SwagTableCellResult tableCellResult3;

        System.assertEquals(false, tableCellResult1.equals(tableCellResult3));
        System.assertEquals(false, tableCellResult2.equals(tableCellResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = new SwagTableCellResult();

        System.assertEquals(tableCellResult1.hashCode(), tableCellResult1.hashCode());
        System.assertEquals(tableCellResult2.hashCode(), tableCellResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagTableCellResult tableCellResult1 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult2 = SwagTableCellResult.getExample();
        SwagTableCellResult tableCellResult3 = new SwagTableCellResult();
        SwagTableCellResult tableCellResult4 = new SwagTableCellResult();

        System.assert(tableCellResult1.equals(tableCellResult2));
        System.assert(tableCellResult3.equals(tableCellResult4));
        System.assertEquals(tableCellResult1.hashCode(), tableCellResult2.hashCode());
        System.assertEquals(tableCellResult3.hashCode(), tableCellResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagTableCellResult tableCellResult = new SwagTableCellResult();
        Map<String, String> propertyMappings = tableCellResult.getPropertyMappings();
        System.assertEquals('columnID', propertyMappings.get('ColumnID'));
        System.assertEquals('cellValues', propertyMappings.get('CellValues'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagTableCellResult tableCellResult = new SwagTableCellResult();
        System.assertEquals(new List<SwagOcrPhotoTextElement>(), tableCellResult.cellValues);
        System.assertEquals(null, tableCellResult.columnID);
    }
}
