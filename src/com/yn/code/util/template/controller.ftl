package ${controllerGenerateInfo.basePackage};
import ${controllerGenerateInfo.modelPackage}.${controllerGenerateInfo.modelNameUpperCamel};
import ${controllerGenerateInfo.servicePackage}.${controllerGenerateInfo.modelNameUpperCamel}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import  com.zimo.commons.dto.Result;
import java.util.List;

/**
* ${controllerGenerateInfo.modelNameUpperCamel}Controller
*
* @author : ${controllerGenerateInfo.author}
* @date: ${controllerGenerateInfo.date}
**/
@RestController
@RequestMapping("${controllerGenerateInfo.baseRequestMapping}")
public class ${controllerGenerateInfo.modelNameUpperCamel}Controller {

    @Autowired
    private ${controllerGenerateInfo.modelNameUpperCamel}Service ${controllerGenerateInfo.modelNameLowerCamel}Service;

    /**
     * 新增
     * @param : ${controllerGenerateInfo.modelNameLowerCamel}
     * @return: Result${"<"}String${">"}
     **/
    @PostMapping
    public Result${"<"}String${">"} insert(@ModelAttribute ${controllerGenerateInfo.modelNameUpperCamel} ${controllerGenerateInfo.modelNameLowerCamel}) {
        return ${controllerGenerateInfo.modelNameLowerCamel}Service.insert(${controllerGenerateInfo.modelNameLowerCamel});
    }

    /**
     * 更新
     * @param : ${controllerGenerateInfo.modelNameLowerCamel}
     * @return: Result${"<"}String${">"}
     **/
    @PutMapping
    public Result${"<"}String${">"} update(@ModelAttribute ${controllerGenerateInfo.modelNameUpperCamel} ${controllerGenerateInfo.modelNameLowerCamel}) {
        return ${controllerGenerateInfo.modelNameLowerCamel}Service.update(${controllerGenerateInfo.modelNameLowerCamel});
    }

    /**
     * 详情
     * @param : id
     * @return: Result${"<"}${controllerGenerateInfo.modelNameUpperCamel}${">"}
     **/
    @GetMapping("{id}")
    public Result${"<"}${controllerGenerateInfo.modelNameUpperCamel}${">"} detail(@PathVariable("id") Integer id) {
        return ${controllerGenerateInfo.modelNameLowerCamel}Service.detail(id);
    }

    /**
     * 查询列表
     * @param :
     * @return: Result${"<List<"}${controllerGenerateInfo.modelNameUpperCamel}${">>"}
     **/
    @GetMapping
    public Result${"<List<"}${controllerGenerateInfo.modelNameUpperCamel}${">>"} list() {
        return ${controllerGenerateInfo.modelNameLowerCamel}Service.list();
    }
}
