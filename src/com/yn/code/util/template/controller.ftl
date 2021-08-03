package ${controllerGenerateInfo.basePackage};
import ${controllerGenerateInfo.modelPackage}.param.${controllerGenerateInfo.moduleName}Query;
import ${controllerGenerateInfo.modelPackage}.param.${controllerGenerateInfo.moduleName}Insert;
import ${controllerGenerateInfo.modelPackage}.param.${controllerGenerateInfo.moduleName}Update;
import ${controllerGenerateInfo.modelPackage}.dto.${controllerGenerateInfo.moduleName}Brief;
import ${controllerGenerateInfo.modelPackage}.dto.${controllerGenerateInfo.moduleName}Detail;
import ${controllerGenerateInfo.servicePackage}.${controllerGenerateInfo.moduleName}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.zimo.commons.global.model.dto.Result;
import java.util.List;

/**
* ${controllerGenerateInfo.moduleName}Controller
*
* @author : ${controllerGenerateInfo.author}
* @date: ${controllerGenerateInfo.date}
**/
@RestController
@RequestMapping("${controllerGenerateInfo.baseRequestMapping}")
public class ${controllerGenerateInfo.moduleName}Controller {

    @Autowired
    private ${controllerGenerateInfo.moduleName}Service ${controllerGenerateInfo.moduleNameLower}Service;

    /**
     * 新增
     *
     * @param : insert
     * @return: Result
     **/
    @PostMapping
    public Result insert(@RequestBody ${controllerGenerateInfo.moduleName}Insert insert) {
        return ${controllerGenerateInfo.moduleNameLower}Service.insert(insert);
    }

    /**
     * 更新
     *
     * @param : update
     * @return: Result
     **/
    @PutMapping
    public Result update(@RequestBody ${controllerGenerateInfo.moduleName}Update update) {
        return ${controllerGenerateInfo.moduleNameLower}Service.update(update);
    }

    /**
     * 详情
     *
     * @param : id
     * @return: Result${"<"}${controllerGenerateInfo.moduleName}Detail${">"}
     **/
    @GetMapping("{id}")
    public Result${"<"}${controllerGenerateInfo.moduleName}Detail${">"} detail(@PathVariable("id") Integer id) {
        return ${controllerGenerateInfo.moduleNameLower}Service.detail(id);
    }

    /**
     * 查询列表
     *
     * @param :
     * @return: Result${"<List<"}${controllerGenerateInfo.moduleName}Simple${">>"}
     **/
    @GetMapping
    public Result${"<List<"}${controllerGenerateInfo.moduleName}Brief${">>"} list(${controllerGenerateInfo.moduleName}Query query) {
        return ${controllerGenerateInfo.moduleNameLower}Service.list(query);
    }
}
