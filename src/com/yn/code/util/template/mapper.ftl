package ${mapperGenerateInfo.basePackage};

import ${mapperGenerateInfo.modelPath}.po.${mapperGenerateInfo.moduleName}PO;
import ${mapperGenerateInfo.modelPath}.param.${mapperGenerateInfo.moduleName}Query;
import ${mapperGenerateInfo.modelPath}.dto.${mapperGenerateInfo.moduleName}Brief;
import ${mapperGenerateInfo.modelPath}.dto.${mapperGenerateInfo.moduleName}Detail;
import java.util.List;

/**
 * ${mapperGenerateInfo.tableComment}
 *
 * 表名：  ${mapperGenerateInfo.tableName}
 * @author ${mapperGenerateInfo.author}
 * @date ${mapperGenerateInfo.date}
 */
public interface ${mapperGenerateInfo.moduleName}Mapper {

    /**
     * 全字段新增
     *
     * @param insert
     * @return 新增条数
     **/
    int insert(${mapperGenerateInfo.moduleName}PO insert);

    /**
     * 根据主键动态修改
     *
     * @param update
     * @return 修改条数
     **/
    int update(${mapperGenerateInfo.moduleName}PO update);

    /**
     * 根据主键查询
     *
     * @param id
     * @return ${mapperGenerateInfo.moduleName}
     **/
    ${mapperGenerateInfo.moduleName}Detail queryByID(${mapperGenerateInfo.primaryKeyJavaTypeName} id);

    /**
     * 查询列表
     *
     * @return ${mapperGenerateInfo.moduleName}
     **/
    List<${mapperGenerateInfo.moduleName}${"Brief>"} list(${mapperGenerateInfo.moduleName}Query query);
}