package ${serviceGenerateInfo.basePackage}.impl;

import ${serviceGenerateInfo.mapperPackage}.${serviceGenerateInfo.modelNameUpperCamel}Mapper;
import ${serviceGenerateInfo.modelPackage}.${serviceGenerateInfo.modelNameUpperCamel};
import ${serviceGenerateInfo.servicePackage}.${serviceGenerateInfo.modelNameUpperCamel}Service;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.zimo.commons.global.model.dto.Result;
import com.zimo.commons.global.util.PageUtil;
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
        // TODO 替换DTO简化参数，使用BeanUtils.copyProperties(insert, po);复制属性
        ${serviceGenerateInfo.modelNameLowerCamel}Mapper.insert(insert);
        return Result.success("新增成功");
    }

    @Override
    public Result update(${serviceGenerateInfo.modelNameUpperCamel} update) {
        // TODO 同上
        ${serviceGenerateInfo.modelNameLowerCamel}Mapper.update(update);
        return Result.success("修改成功");
    }

    @Override
    public Result${"<"}${serviceGenerateInfo.modelNameUpperCamel}${">"} detail(Integer id) {
        // TODO 替换DTO简化参数，仅保留前段需要展示字段
        return Result.success(${serviceGenerateInfo.modelNameLowerCamel}Mapper.queryByID(id));
    }

    @Override
    public Result${"<List<"}${serviceGenerateInfo.modelNameUpperCamel}${">>"} list() {
        // 分页PageUtil.startPage(query);
        return Result.success(${serviceGenerateInfo.modelNameLowerCamel}Mapper.queryList());
    }
}
