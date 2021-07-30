package ${serviceGenerateInfo.basePackage};
import ${serviceGenerateInfo.modelPackage}.${serviceGenerateInfo.modelNameUpperCamel};
import  com.zimo.commons.dto.Result;
import java.util.List;

/**
* ${serviceGenerateInfo.modelNameUpperCamel}Service
*
* @author : ${serviceGenerateInfo.author}
* @date: ${serviceGenerateInfo.date}
**/
public interface ${serviceGenerateInfo.modelNameUpperCamel}Service {

    /**
     * 新增
     * @param ${serviceGenerateInfo.modelNameLowerCamel}
     * @return String
     */
    Result${"<"}String${">"} insert(${serviceGenerateInfo.modelNameUpperCamel} ${serviceGenerateInfo.modelNameLowerCamel});

    /**
     * 修改
     * @param ${serviceGenerateInfo.modelNameLowerCamel}
     * @return String
     */
    Result${"<"}String${">"} update(${serviceGenerateInfo.modelNameUpperCamel} ${serviceGenerateInfo.modelNameLowerCamel});

    /**
     * 查询
     * @param id
     * @return ${serviceGenerateInfo.modelNameUpperCamel}
     */
    Result${"<"}${serviceGenerateInfo.modelNameUpperCamel}${">"} detail(Integer id);

    /**
    * 查询列表
    * @return ${serviceGenerateInfo.modelNameUpperCamel}
    */
    Result${"<List<"}${serviceGenerateInfo.modelNameUpperCamel}${">>"} list();
}
