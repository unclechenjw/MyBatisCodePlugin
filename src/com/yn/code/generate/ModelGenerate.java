package com.yn.code.generate;

import com.yn.code.model.*;
import com.yn.code.util.CommonUtil;
import com.yn.code.util.DataTypeEnum;
import com.yn.code.util.FreeMarkUtil;
import com.yn.code.util.MyException;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * 这里是类描述
 *
 * @author : yangning
 * @date: 2018-6-11
 **/
public class ModelGenerate {
    private ConfigModel configModel;
    private TableInfo tableInfo;

    public ModelGenerate(ConfigModel configModel, TableInfo tableInfo) {
        this.configModel = configModel;
        this.tableInfo = tableInfo;
    }

    public void generate() throws MyException{
        String moduleName = CommonUtil.getNameUpperCamel(configModel.getSign());
        ModelGenerateInfo modelGenerateInfo = new ModelGenerateInfo();
        modelGenerateInfo.setAuthor(configModel.getAuthor());
        modelGenerateInfo.setModuleName(moduleName);
        modelGenerateInfo.setBasePackage(CommonUtil.getPackageNameByPath(configModel.getModelPath()));
        modelGenerateInfo.setDate(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").format(LocalDateTime.now()));
        modelGenerateInfo.setTableComment(tableInfo.getTableComment());
        modelGenerateInfo.setTableName(tableInfo.getTableName());
        List<ModelGenerateColumnInfo> modelGenerateColumnInfos = new ArrayList<>();
        List<String> importList = new ArrayList<>();
        for (TableColumn tableColumn : tableInfo.getTableColumns()) {
            ModelGenerateColumnInfo modelGenerateColumnInfo = new ModelGenerateColumnInfo();
            String javaTypeName = DataTypeEnum.getJavaTypeNameByDataType(tableColumn.getDataType());
            modelGenerateColumnInfo.setColumnComment(tableColumn.getColumnComment());
            modelGenerateColumnInfo.setColumnJavaTypeName(javaTypeName);
            modelGenerateColumnInfo.setColumnCamelName(CommonUtil.getNameLowerCamel(tableColumn.getColumnName()));
            modelGenerateColumnInfos.add(modelGenerateColumnInfo);
            String columnJavaTypeName = DataTypeEnum.getJavaTypeByDataType(tableColumn.getDataType());
            if (CommonUtil.isNeedImport(javaTypeName) && !importList.contains(columnJavaTypeName)) {
                importList.add(columnJavaTypeName);
            }
        }
        modelGenerateInfo.setColumnList(modelGenerateColumnInfos);
        modelGenerateInfo.setImportList(importList);
        Map<String, Object> root = new HashMap<>(1);
        root.put("modelGenerateInfo", modelGenerateInfo);
        FreeMarkUtil.generateFile(root, "model/po.ftl", configModel.getModelPath() + "/po/",
                moduleName + "PO.java");
        FreeMarkUtil.generateFile(root, "model/query.ftl", configModel.getModelPath() + "/param/",
                moduleName + "Query.java");
        FreeMarkUtil.generateFile(root, "model/update.ftl", configModel.getModelPath() + "/param/",
                moduleName + "Update.java");
        FreeMarkUtil.generateFile(root, "model/insert.ftl", configModel.getModelPath() + "/param/",
                moduleName + "Insert.java");
        FreeMarkUtil.generateFile(root, "model/detail.ftl", configModel.getModelPath() + "/dto/",
                moduleName + "Detail.java");
        FreeMarkUtil.generateFile(root, "model/brief.ftl", configModel.getModelPath() + "/dto/",
                moduleName + "Brief.java");
    }
}
