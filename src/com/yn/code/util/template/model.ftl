package ${modelGenerateInfo.basePackage};


import lombok.*;
<#list modelGenerateInfo.importList as import>
import ${import};
</#list>

/**
 * ${modelGenerateInfo.tableComment}
 * 表：  ${modelGenerateInfo.tableName}
 * @author  ${modelGenerateInfo.author}
 * @date ${modelGenerateInfo.date}
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ${modelGenerateInfo.modelNameUpperCamel} {
    <#list modelGenerateInfo.columnList as column>

    /** ${column.columnComment} */
    private ${column.columnJavaTypeName} ${column.columnCamelName};
    </#list>
}