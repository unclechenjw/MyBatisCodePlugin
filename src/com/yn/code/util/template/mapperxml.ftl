<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${mapperGenerateInfo.basePackage}.${mapperGenerateInfo.moduleName}Mapper">

    <insert id="insert" parameterType="${mapperGenerateInfo.modelPath}.po.${mapperGenerateInfo.moduleName}PO" keyProperty="${mapperGenerateInfo.primaryKey}" useGeneratedKeys="true">
        INSERT INTO ${mapperGenerateInfo.tableName}
            (<#list mapperGenerateInfo.columnList as column><#if mapperGenerateInfo.primaryKey != column.columnName><#if column_has_next>${column.columnName},<#else>${column.columnName}</#if></#if><#if (column_index+1)%5 == 0>${"\n             "}</#if></#list>)
        VALUES (
        <#list mapperGenerateInfo.columnList as column>
            <#if mapperGenerateInfo.primaryKey != column.columnName>
                <#if column_has_next>
            ${"#\{"}${column.columnCamelName},jdbcType=${column.columnJdbcType}${"}"},
                <#else>
            ${"#\{"}${column.columnCamelName},jdbcType=${column.columnJdbcType}${"}"}
                </#if>
            </#if>
        </#list>
        )
    </insert>

    <update id="update" parameterType="${mapperGenerateInfo.modelPath}.po.${mapperGenerateInfo.moduleName}PO">
        UPDATE ${mapperGenerateInfo.tableName}
        <set>
        <#list mapperGenerateInfo.columnList as column>
            <#if mapperGenerateInfo.primaryKey != column.columnName>
            <if test="${column.columnCamelName} != null">
                ${column.columnName} = ${"#\{"}${column.columnCamelName},jdbcType=${column.columnJdbcType}${"}"},
            </if>
            </#if>
        </#list>
        </set>
        WHERE ${mapperGenerateInfo.primaryKey} = ${"#\{"}${mapperGenerateInfo.primaryKeyCamel},jdbcType=${mapperGenerateInfo.primaryKeyJdbcType}${"}"}
    </update>

    <select id="queryByID" parameterType="${mapperGenerateInfo.primaryKeyJavaTypeName}" resultType="${mapperGenerateInfo.modelPath}.dto.${mapperGenerateInfo.moduleName}Detail">
        SELECT <#list mapperGenerateInfo.columnList as column><#if column_has_next>${column.columnName} AS ${column.columnCamelName},${"\n               "}<#else>${column.columnName} AS ${column.columnCamelName}</#if></#list>
          FROM ${mapperGenerateInfo.tableName}
         WHERE ${mapperGenerateInfo.primaryKey} = ${"#\{"}${mapperGenerateInfo.primaryKeyCamel},jdbcType=${mapperGenerateInfo.primaryKeyJdbcType}${"}"}
    </select>

    <select id="list" resultType="${mapperGenerateInfo.modelPath}.dto.${mapperGenerateInfo.moduleName}Brief">
        SELECT <#list mapperGenerateInfo.columnList as column><#if column_has_next>${column.columnName} AS ${column.columnCamelName},${"\n               "}<#else>${column.columnName} AS ${column.columnCamelName}</#if></#list>
          FROM ${mapperGenerateInfo.tableName}
    </select>
</mapper>