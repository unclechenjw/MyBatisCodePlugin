package com.yn.code.generate;

import com.yn.code.model.ConfigModel;
import com.yn.code.model.ServiceGenerateInfo;
import com.yn.code.model.TableInfo;
import com.yn.code.util.CommonUtil;
import com.yn.code.util.FreeMarkUtil;
import com.yn.code.util.MyException;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

/**
 * 这里是类描述
 *
 * @author : yangning
 * @date: 2018-8-6
 **/
public class ServiceGenerate {
    private ConfigModel configModel;
    private TableInfo tableInfo;

    public ServiceGenerate(ConfigModel configModel, TableInfo tableInfo) {
        this.configModel = configModel;
        this.tableInfo = tableInfo;
    }

    public void generate() throws MyException{
        ServiceGenerateInfo serviceGenerateInfo = new ServiceGenerateInfo();
        serviceGenerateInfo.setAuthor(configModel.getAuthor());
        serviceGenerateInfo.setModuleName(CommonUtil.getNameUpperCamel(configModel.getSign()));
        serviceGenerateInfo.setModuleNameLower(CommonUtil.getNameLowerCamel(configModel.getSign()));
        serviceGenerateInfo.setBasePackage(CommonUtil.getPackageNameByPath(configModel.getServicePath()));
        serviceGenerateInfo.setModelPackage(CommonUtil.getPackageNameByPath(configModel.getModelPath()));
        serviceGenerateInfo.setMapperPackage(CommonUtil.getPackageNameByPath(configModel.getMapperJavaPath()));
        serviceGenerateInfo.setServicePackage(CommonUtil.getPackageNameByPath(configModel.getServicePath()));
        serviceGenerateInfo.setDate(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").format(LocalDateTime.now()));
//        serviceGenerateInfo.setModelNameUpperCamel(CommonUtil.getNameUpperCamel(tableInfo.getTableName()));
//        serviceGenerateInfo.setModelNameLowerCamel(CommonUtil.getNameLowerCamel(tableInfo.getTableName()));
        serviceGenerateInfo.setTableComment(tableInfo.getTableComment());
//        serviceGenerateInfo.setTableName(tableInfo.getTableName());

        Map<String, Object> root = new HashMap<>(1);
        root.put("serviceGenerateInfo", serviceGenerateInfo);
        String serviceName = serviceGenerateInfo.getModuleName() + "Service.java";
        String serviceImplName = serviceGenerateInfo.getModuleName() + "ServiceImpl.java";
        FreeMarkUtil.generateFile(root, "service.ftl", configModel.getServicePath(), serviceName);
        FreeMarkUtil.generateFile(root, "service-impl.ftl", configModel.getServicePath() + "/impl", serviceImplName);
    }
}
