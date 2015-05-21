package com.eol.maintenance.web;
import com.eol.maintenance.domain.SMMLine;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/smmlines")
@Controller
@RooWebScaffold(path = "smmlines", formBackingObject = SMMLine.class)
@RooWebFinder
public class SMMLineController {
}
