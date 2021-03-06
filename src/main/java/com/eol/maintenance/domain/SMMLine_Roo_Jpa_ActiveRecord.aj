// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.domain;

import com.eol.maintenance.domain.SMMLine;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SMMLine_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SMMLine.entityManager;
    
    public static final List<String> SMMLine.fieldNames4OrderClauseFilter = java.util.Arrays.asList("id", "unitTime", "labourRate", "product", "smmGroup", "labourQuantity", "labourRateCost", "materialQuantity", "uuid", "buildStage", "schedule", "labourTotal", "materialTotal", "buildStageText", "formula", "description", "name", "idx", "labourRoundTo", "labourUOM", "materialMultiplier", "materialRate", "materialRoundTo", "smmCalculation", "labourGrade");
    
    public static final EntityManager SMMLine.entityManager() {
        EntityManager em = new SMMLine().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SMMLine.countSMMLines() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SMMLine o", Long.class).getSingleResult();
    }
    
    public static List<SMMLine> SMMLine.findAllSMMLines() {
        return entityManager().createQuery("SELECT o FROM SMMLine o", SMMLine.class).getResultList();
    }
    
    public static List<SMMLine> SMMLine.findAllSMMLines(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SMMLine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SMMLine.class).getResultList();
    }
    
    public static SMMLine SMMLine.findSMMLine(Long id) {
        if (id == null) return null;
        return entityManager().find(SMMLine.class, id);
    }
    
    public static List<SMMLine> SMMLine.findSMMLineEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SMMLine o", SMMLine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SMMLine> SMMLine.findSMMLineEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SMMLine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SMMLine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SMMLine.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SMMLine.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SMMLine attached = SMMLine.findSMMLine(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SMMLine.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SMMLine.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SMMLine SMMLine.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SMMLine merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
