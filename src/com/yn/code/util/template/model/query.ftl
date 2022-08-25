package ${modelGenerateInfo.basePackage}.param;

import com.zimo.commons.global.model.dto.BasePage;
import lombok.Getter;
import lombok.Setter;

/**
 * ${modelGenerateInfo.tableComment}查询
 *
 * @author ${modelGenerateInfo.author}
 * @date ${modelGenerateInfo.date}
 **/
@Getter
@Setter
public class ${modelGenerateInfo.moduleName}Query extends BasePage {

    /**
     * 查询关键字
     **/
    private String keyword;
}