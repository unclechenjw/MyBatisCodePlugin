package ${queryGenerateInfo.basePackage}.dto;

import com.zimo.commons.global.model.dto.BasePage;
import lombok.Getter;
import lombok.Setter;

/**
 * ${queryGenerateInfo.moduleName}
 *
 * @author : ${queryGenerateInfo.author}
 * @date: ${queryGenerateInfo.date}
 **/
@Getter
@Setter
public class ${queryGenerateInfo.moduleName}Brief extends BasePage {

    /**
     * 查询关键字
     **/
    private String keyword;
}
