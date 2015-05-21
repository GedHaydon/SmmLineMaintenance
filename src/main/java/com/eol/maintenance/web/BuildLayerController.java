package com.eol.maintenance.web;
import com.eol.maintenance.domain.BuildLayer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/buildlayers")
@Controller
@RooWebScaffold(path = "buildlayers", formBackingObject = BuildLayer.class)
public class BuildLayerController {
}
