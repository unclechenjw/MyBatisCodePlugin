package ${serviceGenerateInfo.basePackage};
import ${serviceGenerateInfo.modelPackage}.param.${serviceGenerateInfo.moduleName}Query;
import ${serviceGenerateInfo.modelPackage}.param.${serviceGenerateInfo.moduleName}Insert;
import ${serviceGenerateInfo.modelPackage}.param.${serviceGenerateInfo.moduleName}Update;
import ${serviceGenerateInfo.modelPackage}.dto.${serviceGenerateInfo.moduleName}Brief;
import ${serviceGenerateInfo.modelPackage}.dto.${serviceGenerateInfo.moduleName}Detail;
import com.zimo.commons.global.model.dto.Result;
import java.util.List;

/**
 * ${serviceGenerateInfo.tableComment}服务
 *
 * @author : ${serviceGenerateInfo.author}
 * @date: ${serviceGenerateInfo.date}
 **/
public interface ${serviceGenerateInfo.moduleName}Service {

    /**
     * 新增
     *
     * @param insert
     * @return String
     **/
    Result insert(${serviceGenerateInfo.moduleName}Insert insert);

    /**
     * 修改
     *
     * @param update
     * @return String
     **/
    Result update(${serviceGenerateInfo.moduleName}Update update);

    /**
     * 查询
     *
     * @param id
     * @return ${serviceGenerateInfo.moduleName}Detail
     **/
    Result${"<"}${serviceGenerateInfo.moduleName}Detail${">"} detail(Integer id);

    /**
     * 查询列表
     *
     * @return ${serviceGenerateInfo.moduleName}Brief
     **/
    Result${"<List<"}${serviceGenerateInfo.moduleName}Brief${">>"} list(${serviceGenerateInfo.moduleName}Query query);
}
