package com.eol.maintenance.web;
import com.eol.maintenance.domain.SMMGroup;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/smmgroups")
@Controller
@RooWebScaffold(path = "smmgroups", formBackingObject = SMMGroup.class)
@RooWebFinder
public class SMMGroupController {

    @RequestMapping(produces = "text/html")
    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            if ((sortFieldName == null) || (sortFieldName.length() == 0)) {
                sortFieldName = "idx";
                sortOrder = "asc";
            }
            uiModel.addAttribute("smmgroups", SMMGroup.findSMMGroupEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SMMGroup.countSMMGroups() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("smmgroups", SMMGroup.findAllSMMGroups(sortFieldName, sortOrder));
        }
        return "smmgroups/list";
    }
}
