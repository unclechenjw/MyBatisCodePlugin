package ${serviceGenerateInfo.basePackage}.impl;

import ${serviceGenerateInfo.servicePackage}.${serviceGenerateInfo.moduleName}Service;
import ${serviceGenerateInfo.mapperPackage}.${serviceGenerateInfo.moduleName}Mapper;
import ${serviceGenerateInfo.modelPackage}.po.${serviceGenerateInfo.moduleName}PO;
import ${serviceGenerateInfo.modelPackage}.param.${serviceGenerateInfo.moduleName}Query;
import ${serviceGenerateInfo.modelPackage}.param.${serviceGenerateInfo.moduleName}Insert;
import ${serviceGenerateInfo.modelPackage}.param.${serviceGenerateInfo.moduleName}Update;
import ${serviceGenerateInfo.modelPackage}.dto.${serviceGenerateInfo.moduleName}Brief;
import ${serviceGenerateInfo.modelPackage}.dto.${serviceGenerateInfo.moduleName}Detail;
import com.zimo.session.bms.SessionUtil;
import com.zimo.commons.global.model.dto.Result;
import com.zimo.commons.global.util.PageUtil;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;
import java.util.List;

/**
 * ${serviceGenerateInfo.tableComment}服务
 *
 * @author : ${serviceGenerateInfo.author}
 * @date: ${serviceGenerateInfo.date}
 **/
@Service
public class ${serviceGenerateInfo.moduleName}ServiceImpl implements ${serviceGenerateInfo.moduleName}Service {

    @Autowired
    private ${serviceGenerateInfo.moduleName}Mapper ${serviceGenerateInfo.moduleNameLower}Mapper;

    @Override
    public Result insert(${serviceGenerateInfo.moduleName}Insert insert) {
        ${serviceGenerateInfo.moduleName}PO ${serviceGenerateInfo.moduleNameLower}PO = ${serviceGenerateInfo.moduleName}PO.builder()
                .createTime(LocalDateTime.now())
                .createUserId(SessionUtil.getUserId())
                .createUserName(SessionUtil.getUserName())
                .build();
        BeanUtils.copyProperties(insert, ${serviceGenerateInfo.moduleNameLower}PO);
        ${serviceGenerateInfo.moduleNameLower}Mapper.insert(${serviceGenerateInfo.moduleNameLower}PO);
        return Result.success("新增成功");
    }

    @Override
    public Result update(${serviceGenerateInfo.moduleName}Update update) {
        ${serviceGenerateInfo.moduleName}PO ${serviceGenerateInfo.moduleNameLower}PO = ${serviceGenerateInfo.moduleName}PO.builder()
                .updateTime(LocalDateTime.now())
                .updateUserId(SessionUtil.getUserId())
                .updateUserName(SessionUtil.getUserName())
                .build();
        BeanUtils.copyProperties(update, ${serviceGenerateInfo.moduleNameLower}PO);
        ${serviceGenerateInfo.moduleNameLower}Mapper.update(${serviceGenerateInfo.moduleNameLower}PO);
        return Result.success("修改成功");
    }

    @Override
    public Result${"<"}${serviceGenerateInfo.moduleName}Detail${">"} detail(Integer id) {
        // TODO 替换返回结果DTO，简化字段，仅保留前端所需要展示的字段
        return Result.success(${serviceGenerateInfo.moduleNameLower}Mapper.queryByID(id));
    }

    @Override
    public Result${"<List<"}${serviceGenerateInfo.moduleName}Brief${">>"} list(${serviceGenerateInfo.moduleName}Query query) {
        PageUtil.startPage(query);
        return Result.success(${serviceGenerateInfo.moduleNameLower}Mapper.list(query));
    }
}
