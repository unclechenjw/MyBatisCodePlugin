package ${modelGenerateInfo.basePackage}.dto;

import lombok.Getter;
import lombok.Setter;
<#list modelGenerateInfo.importList as import>
import ${import};
</#list>
import java.time.LocalDateTime;

/**
 * ${modelGenerateInfo.tableComment}详情
 *
 * @author ${modelGenerateInfo.author}
 * @date ${modelGenerateInfo.date}
 **/
@Getter
@Setter
public class ${modelGenerateInfo.moduleName}Detail {

    // TODO 记得删除无用字段；记得删除无用字段；记得删除无用字段；记得删除无用字段；记得删除无用字段；
<#list modelGenerateInfo.columnList as column>

    /** ${column.columnComment} */
    private ${column.columnJavaTypeName} ${column.columnCamelName};
</#list>
}
