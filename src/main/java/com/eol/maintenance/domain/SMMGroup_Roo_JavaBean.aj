// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.domain;

import com.eol.maintenance.domain.SMMGroup;
import com.eol.maintenance.domain.SoftwareVersion;

privileged aspect SMMGroup_Roo_JavaBean {
    
    public Long SMMGroup.getIdx() {
        return this.idx;
    }
    
    public void SMMGroup.setIdx(Long idx) {
        this.idx = idx;
    }
    
    public String SMMGroup.getName() {
        return this.name;
    }
    
    public void SMMGroup.setName(String name) {
        this.name = name;
    }
    
    public SoftwareVersion SMMGroup.getSoftwareVersion() {
        return this.softwareVersion;
    }
    
    public void SMMGroup.setSoftwareVersion(SoftwareVersion softwareVersion) {
        this.softwareVersion = softwareVersion;
    }
    
    public Byte SMMGroup.getIncludeAsLumpSum() {
        return this.includeAsLumpSum;
    }
    
    public void SMMGroup.setIncludeAsLumpSum(Byte includeAsLumpSum) {
        this.includeAsLumpSum = includeAsLumpSum;
    }
    
    public Double SMMGroup.getOverhead() {
        return this.overhead;
    }
    
    public void SMMGroup.setOverhead(Double overhead) {
        this.overhead = overhead;
    }
    
    public Double SMMGroup.getProfit() {
        return this.profit;
    }
    
    public void SMMGroup.setProfit(Double profit) {
        this.profit = profit;
    }
    
    public Double SMMGroup.getLabourTotal() {
        return this.labourTotal;
    }
    
    public void SMMGroup.setLabourTotal(Double labourTotal) {
        this.labourTotal = labourTotal;
    }
    
    public Double SMMGroup.getMaterialTotal() {
        return this.materialTotal;
    }
    
    public void SMMGroup.setMaterialTotal(Double materialTotal) {
        this.materialTotal = materialTotal;
    }
    
    public Byte SMMGroup.getPcSum() {
        return this.pcSum;
    }
    
    public void SMMGroup.setPcSum(Byte pcSum) {
        this.pcSum = pcSum;
    }
    
}