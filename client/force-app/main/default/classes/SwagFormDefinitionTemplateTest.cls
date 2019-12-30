@isTest
private class SwagFormDefinitionTemplateTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = formDefinitionTemplate1;
        SwagFormDefinitionTemplate formDefinitionTemplate3 = new SwagFormDefinitionTemplate();
        SwagFormDefinitionTemplate formDefinitionTemplate4 = formDefinitionTemplate3;

        System.assert(formDefinitionTemplate1.equals(formDefinitionTemplate2));
        System.assert(formDefinitionTemplate2.equals(formDefinitionTemplate1));
        System.assert(formDefinitionTemplate1.equals(formDefinitionTemplate1));
        System.assert(formDefinitionTemplate3.equals(formDefinitionTemplate4));
        System.assert(formDefinitionTemplate4.equals(formDefinitionTemplate3));
        System.assert(formDefinitionTemplate3.equals(formDefinitionTemplate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate3 = new SwagFormDefinitionTemplate();
        SwagFormDefinitionTemplate formDefinitionTemplate4 = new SwagFormDefinitionTemplate();

        System.assert(formDefinitionTemplate1.equals(formDefinitionTemplate2));
        System.assert(formDefinitionTemplate2.equals(formDefinitionTemplate1));
        System.assert(formDefinitionTemplate3.equals(formDefinitionTemplate4));
        System.assert(formDefinitionTemplate4.equals(formDefinitionTemplate3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = new SwagFormDefinitionTemplate();

        System.assertEquals(false, formDefinitionTemplate1.equals(formDefinitionTemplate2));
        System.assertEquals(false, formDefinitionTemplate2.equals(formDefinitionTemplate1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = new SwagFormDefinitionTemplate();

        System.assertEquals(false, formDefinitionTemplate1.equals('foo'));
        System.assertEquals(false, formDefinitionTemplate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = new SwagFormDefinitionTemplate();
        SwagFormDefinitionTemplate formDefinitionTemplate3;

        System.assertEquals(false, formDefinitionTemplate1.equals(formDefinitionTemplate3));
        System.assertEquals(false, formDefinitionTemplate2.equals(formDefinitionTemplate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = new SwagFormDefinitionTemplate();

        System.assertEquals(formDefinitionTemplate1.hashCode(), formDefinitionTemplate1.hashCode());
        System.assertEquals(formDefinitionTemplate2.hashCode(), formDefinitionTemplate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFormDefinitionTemplate formDefinitionTemplate1 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate2 = SwagFormDefinitionTemplate.getExample();
        SwagFormDefinitionTemplate formDefinitionTemplate3 = new SwagFormDefinitionTemplate();
        SwagFormDefinitionTemplate formDefinitionTemplate4 = new SwagFormDefinitionTemplate();

        System.assert(formDefinitionTemplate1.equals(formDefinitionTemplate2));
        System.assert(formDefinitionTemplate3.equals(formDefinitionTemplate4));
        System.assertEquals(formDefinitionTemplate1.hashCode(), formDefinitionTemplate2.hashCode());
        System.assertEquals(formDefinitionTemplate3.hashCode(), formDefinitionTemplate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFormDefinitionTemplate formDefinitionTemplate = new SwagFormDefinitionTemplate();
        Map<String, String> propertyMappings = formDefinitionTemplate.getPropertyMappings();
        System.assertEquals('fieldDefinitions', propertyMappings.get('FieldDefinitions'));
        System.assertEquals('tableDefinitions', propertyMappings.get('TableDefinitions'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFormDefinitionTemplate formDefinitionTemplate = new SwagFormDefinitionTemplate();
        System.assertEquals(new List<SwagFormFieldDefinition>(), formDefinitionTemplate.fieldDefinitions);
        System.assertEquals(new List<SwagFormTableDefinition>(), formDefinitionTemplate.tableDefinitions);
    }
}
