// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.web;

import com.eol.maintenance.domain.SMMGroup;
import com.eol.maintenance.web.SMMGroupController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect SMMGroupController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByNameLike", "form" }, method = RequestMethod.GET)
    public String SMMGroupController.findSMMGroupsByNameLikeForm(Model uiModel) {
        return "smmgroups/findSMMGroupsByNameLike";
    }
    
    @RequestMapping(params = "find=ByNameLike", method = RequestMethod.GET)
    public String SMMGroupController.findSMMGroupsByNameLike(@RequestParam("name") String name, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("smmgroups", SMMGroup.findSMMGroupsByNameLike(name, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) SMMGroup.countFindSMMGroupsByNameLike(name) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("smmgroups", SMMGroup.findSMMGroupsByNameLike(name, sortFieldName, sortOrder).getResultList());
        }
        return "smmgroups/list";
    }
    
}