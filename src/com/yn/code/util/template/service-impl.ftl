package ${serviceGenerateInfo.basePackage}.impl;

import ${serviceGenerateInfo.mapperPackage}.${serviceGenerateInfo.modelNameUpperCamel}Mapper;
import ${serviceGenerateInfo.modelPackage}.${serviceGenerateInfo.modelNameUpperCamel};
import ${serviceGenerateInfo.servicePackage}.${serviceGenerateInfo.modelNameUpperCamel}Service;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.zimo.commons.global.model.dto.Result;
import java.util.List;

/**
* ${serviceGenerateInfo.modelNameUpperCamel}ServiceImpl
*
* @author : ${serviceGenerateInfo.author}
* @date: ${serviceGenerateInfo.date}
**/
@Service
public class ${serviceGenerateInfo.modelNameUpperCamel}ServiceImpl implements ${serviceGenerateInfo.modelNameUpperCamel}Service {

    @Autowired
    private ${serviceGenerateInfo.modelNameUpperCamel}Mapper ${serviceGenerateInfo.modelNameLowerCamel}Mapper;

    @Override
    public Result insert(${serviceGenerateInfo.modelNameUpperCamel} insert) {
        ${serviceGenerateInfo.modelNameLowerCamel}Mapper.insert(insert);
        return Result.success("新增成功");
    }

    @Override
    public Result update(${serviceGenerateInfo.modelNameUpperCamel} update) {
        ${serviceGenerateInfo.modelNameLowerCamel}Mapper.update(update);
        return Result.success("修改成功");
    }

    @Override
    public Result${"<"}${serviceGenerateInfo.modelNameUpperCamel}${">"} detail(Integer id) {
        return Result.success(${serviceGenerateInfo.modelNameLowerCamel}Mapper.queryByID(id));
    }

    @Override
    public Result${"<List<"}${serviceGenerateInfo.modelNameUpperCamel}${">>"} list() {
        return Result.success(${serviceGenerateInfo.modelNameLowerCamel}Mapper.queryList());
    }
}
