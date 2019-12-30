@isTest
private class SwagFormTableDefinitionTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = formTableDefinition1;
        SwagFormTableDefinition formTableDefinition3 = new SwagFormTableDefinition();
        SwagFormTableDefinition formTableDefinition4 = formTableDefinition3;

        System.assert(formTableDefinition1.equals(formTableDefinition2));
        System.assert(formTableDefinition2.equals(formTableDefinition1));
        System.assert(formTableDefinition1.equals(formTableDefinition1));
        System.assert(formTableDefinition3.equals(formTableDefinition4));
        System.assert(formTableDefinition4.equals(formTableDefinition3));
        System.assert(formTableDefinition3.equals(formTableDefinition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition3 = new SwagFormTableDefinition();
        SwagFormTableDefinition formTableDefinition4 = new SwagFormTableDefinition();

        System.assert(formTableDefinition1.equals(formTableDefinition2));
        System.assert(formTableDefinition2.equals(formTableDefinition1));
        System.assert(formTableDefinition3.equals(formTableDefinition4));
        System.assert(formTableDefinition4.equals(formTableDefinition3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = new SwagFormTableDefinition();

        System.assertEquals(false, formTableDefinition1.equals(formTableDefinition2));
        System.assertEquals(false, formTableDefinition2.equals(formTableDefinition1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = new SwagFormTableDefinition();

        System.assertEquals(false, formTableDefinition1.equals('foo'));
        System.assertEquals(false, formTableDefinition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = new SwagFormTableDefinition();
        SwagFormTableDefinition formTableDefinition3;

        System.assertEquals(false, formTableDefinition1.equals(formTableDefinition3));
        System.assertEquals(false, formTableDefinition2.equals(formTableDefinition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = new SwagFormTableDefinition();

        System.assertEquals(formTableDefinition1.hashCode(), formTableDefinition1.hashCode());
        System.assertEquals(formTableDefinition2.hashCode(), formTableDefinition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFormTableDefinition formTableDefinition1 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition2 = SwagFormTableDefinition.getExample();
        SwagFormTableDefinition formTableDefinition3 = new SwagFormTableDefinition();
        SwagFormTableDefinition formTableDefinition4 = new SwagFormTableDefinition();

        System.assert(formTableDefinition1.equals(formTableDefinition2));
        System.assert(formTableDefinition3.equals(formTableDefinition4));
        System.assertEquals(formTableDefinition1.hashCode(), formTableDefinition2.hashCode());
        System.assertEquals(formTableDefinition3.hashCode(), formTableDefinition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFormTableDefinition formTableDefinition = new SwagFormTableDefinition();
        Map<String, String> propertyMappings = formTableDefinition.getPropertyMappings();
        System.assertEquals('tableID', propertyMappings.get('TableID'));
        System.assertEquals('columnDefinitions', propertyMappings.get('ColumnDefinitions'));
        System.assertEquals('targetTableHeightRelative', propertyMappings.get('TargetTableHeight_Relative'));
        System.assertEquals('targetRowHeightRelative', propertyMappings.get('TargetRowHeight_Relative'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFormTableDefinition formTableDefinition = new SwagFormTableDefinition();
        System.assertEquals(new List<SwagFormTableColumnDefinition>(), formTableDefinition.columnDefinitions);
        System.assertEquals(null, formTableDefinition.tableID);
        System.assertEquals(null, formTableDefinition.targetTableHeightRelative);
        System.assertEquals(null, formTableDefinition.targetRowHeightRelative);
    }
}
