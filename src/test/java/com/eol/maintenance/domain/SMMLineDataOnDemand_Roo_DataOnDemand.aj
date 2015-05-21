// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.domain;

import com.eol.maintenance.domain.BuildStage;
import com.eol.maintenance.domain.LabourGrade;
import com.eol.maintenance.domain.SMMGroup;
import com.eol.maintenance.domain.SMMGroupDataOnDemand;
import com.eol.maintenance.domain.SMMLine;
import com.eol.maintenance.domain.SMMLineDataOnDemand;
import com.eol.maintenance.domain.SmmCalculation;
import com.eol.maintenance.domain.UOM;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect SMMLineDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SMMLineDataOnDemand: @Component;
    
    private Random SMMLineDataOnDemand.rnd = new SecureRandom();
    
    private List<SMMLine> SMMLineDataOnDemand.data;
    
    @Autowired
    SMMGroupDataOnDemand SMMLineDataOnDemand.sMMGroupDataOnDemand;
    
    public SMMLine SMMLineDataOnDemand.getNewTransientSMMLine(int index) {
        SMMLine obj = new SMMLine();
        setBuildStage(obj, index);
        setBuildStageText(obj, index);
        setDescription(obj, index);
        setFormula(obj, index);
        setIdx(obj, index);
        setLabourGrade(obj, index);
        setLabourQuantity(obj, index);
        setLabourRate(obj, index);
        setLabourRateCost(obj, index);
        setLabourRoundTo(obj, index);
        setLabourTotal(obj, index);
        setLabourUOM(obj, index);
        setMaterialMultiplier(obj, index);
        setMaterialQuantity(obj, index);
        setMaterialRate(obj, index);
        setMaterialRoundTo(obj, index);
        setMaterialTotal(obj, index);
        setName(obj, index);
        setProduct(obj, index);
        setSchedule(obj, index);
        setSmmCalculation(obj, index);
        setSmmGroup(obj, index);
        setUnitTime(obj, index);
        setUuid(obj, index);
        return obj;
    }
    
    public void SMMLineDataOnDemand.setBuildStage(SMMLine obj, int index) {
        BuildStage buildStage = null;
        obj.setBuildStage(buildStage);
    }
    
    public void SMMLineDataOnDemand.setBuildStageText(SMMLine obj, int index) {
        String buildStageText = "buildStageText_" + index;
        if (buildStageText.length() > 255) {
            buildStageText = buildStageText.substring(0, 255);
        }
        obj.setBuildStageText(buildStageText);
    }
    
    public void SMMLineDataOnDemand.setDescription(SMMLine obj, int index) {
        String description = "description_" + index;
        if (description.length() > 255) {
            description = description.substring(0, 255);
        }
        obj.setDescription(description);
    }
    
    public void SMMLineDataOnDemand.setFormula(SMMLine obj, int index) {
        String formula = "formula_" + index;
        obj.setFormula(formula);
    }
    
    public void SMMLineDataOnDemand.setIdx(SMMLine obj, int index) {
        Long idx = new Integer(index).longValue();
        obj.setIdx(idx);
    }
    
    public void SMMLineDataOnDemand.setLabourGrade(SMMLine obj, int index) {
        LabourGrade labourGrade = LabourGrade.class.getEnumConstants()[0];
        obj.setLabourGrade(labourGrade);
    }
    
    public void SMMLineDataOnDemand.setLabourQuantity(SMMLine obj, int index) {
        Long labourQuantity = new Integer(index).longValue();
        obj.setLabourQuantity(labourQuantity);
    }
    
    public void SMMLineDataOnDemand.setLabourRate(SMMLine obj, int index) {
        Long labourRate = new Integer(index).longValue();
        obj.setLabourRate(labourRate);
    }
    
    public void SMMLineDataOnDemand.setLabourRateCost(SMMLine obj, int index) {
        Long labourRateCost = new Integer(index).longValue();
        obj.setLabourRateCost(labourRateCost);
    }
    
    public void SMMLineDataOnDemand.setLabourRoundTo(SMMLine obj, int index) {
        Double labourRoundTo = (double) 0.001;
        obj.setLabourRoundTo(labourRoundTo);
    }
    
    public void SMMLineDataOnDemand.setLabourTotal(SMMLine obj, int index) {
        Double labourTotal = new Integer(index).doubleValue();
        obj.setLabourTotal(labourTotal);
    }
    
    public void SMMLineDataOnDemand.setLabourUOM(SMMLine obj, int index) {
        UOM labourUOM = null;
        obj.setLabourUOM(labourUOM);
    }
    
    public void SMMLineDataOnDemand.setMaterialMultiplier(SMMLine obj, int index) {
        Double materialMultiplier = new Integer(index).doubleValue();
        obj.setMaterialMultiplier(materialMultiplier);
    }
    
    public void SMMLineDataOnDemand.setMaterialQuantity(SMMLine obj, int index) {
        Long materialQuantity = new Integer(index).longValue();
        obj.setMaterialQuantity(materialQuantity);
    }
    
    public void SMMLineDataOnDemand.setMaterialRate(SMMLine obj, int index) {
        Double materialRate = new Integer(index).doubleValue();
        obj.setMaterialRate(materialRate);
    }
    
    public void SMMLineDataOnDemand.setMaterialRoundTo(SMMLine obj, int index) {
        Double materialRoundTo = (double) 0.001;
        obj.setMaterialRoundTo(materialRoundTo);
    }
    
    public void SMMLineDataOnDemand.setMaterialTotal(SMMLine obj, int index) {
        Double materialTotal = new Integer(index).doubleValue();
        obj.setMaterialTotal(materialTotal);
    }
    
    public void SMMLineDataOnDemand.setName(SMMLine obj, int index) {
        String name = "name_" + index;
        if (name.length() > 255) {
            name = name.substring(0, 255);
        }
        obj.setName(name);
    }
    
    public void SMMLineDataOnDemand.setProduct(SMMLine obj, int index) {
        Long product = new Integer(index).longValue();
        obj.setProduct(product);
    }
    
    public void SMMLineDataOnDemand.setSchedule(SMMLine obj, int index) {
        Boolean schedule = Boolean.TRUE;
        obj.setSchedule(schedule);
    }
    
    public void SMMLineDataOnDemand.setSmmCalculation(SMMLine obj, int index) {
        SmmCalculation smmCalculation = SmmCalculation.class.getEnumConstants()[0];
        obj.setSmmCalculation(smmCalculation);
    }
    
    public void SMMLineDataOnDemand.setSmmGroup(SMMLine obj, int index) {
        SMMGroup smmGroup = sMMGroupDataOnDemand.getRandomSMMGroup();
        obj.setSmmGroup(smmGroup);
    }
    
    public void SMMLineDataOnDemand.setUnitTime(SMMLine obj, int index) {
        Double unitTime = new Integer(index).doubleValue();
        obj.setUnitTime(unitTime);
    }
    
    public void SMMLineDataOnDemand.setUuid(SMMLine obj, int index) {
        Long uuid = new Integer(index).longValue();
        obj.setUuid(uuid);
    }
    
    public SMMLine SMMLineDataOnDemand.getSpecificSMMLine(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        SMMLine obj = data.get(index);
        Long id = obj.getId();
        return SMMLine.findSMMLine(id);
    }
    
    public SMMLine SMMLineDataOnDemand.getRandomSMMLine() {
        init();
        SMMLine obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return SMMLine.findSMMLine(id);
    }
    
    public boolean SMMLineDataOnDemand.modifySMMLine(SMMLine obj) {
        return false;
    }
    
    public void SMMLineDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = SMMLine.findSMMLineEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'SMMLine' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<SMMLine>();
        for (int i = 0; i < 10; i++) {
            SMMLine obj = getNewTransientSMMLine(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
