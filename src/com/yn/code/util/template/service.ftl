package ${serviceGenerateInfo.basePackage};
import ${serviceGenerateInfo.modelPackage}.${serviceGenerateInfo.modelNameUpperCamel};
import com.zimo.commons.global.model.dto.Result;
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
     *
     * @param insert
     * @return String
     */
    Result insert(${serviceGenerateInfo.modelNameUpperCamel} insert);

    /**
     * 修改
     *
     * @param update
     * @return String
     */
    Result update(${serviceGenerateInfo.modelNameUpperCamel} update);

    /**
     * 查询
     *
     * @param id
     * @return ${serviceGenerateInfo.modelNameUpperCamel}
     */
    Result${"<"}${serviceGenerateInfo.modelNameUpperCamel}${">"} detail(Integer id);

    /**
     * 查询列表
     *
     * @return ${serviceGenerateInfo.modelNameUpperCamel}
     */
    Result${"<List<"}${serviceGenerateInfo.modelNameUpperCamel}${">>"} list();
}
