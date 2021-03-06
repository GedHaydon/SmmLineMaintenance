// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.domain;

import com.eol.maintenance.domain.SoftwareVersion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SoftwareVersion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SoftwareVersion.entityManager;
    
    public static final List<String> SoftwareVersion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("dtype", "majorVersion", "minorVersion", "currentVersion", "incompleteVersion", "smmGroups", "uuid");
    
    public static final EntityManager SoftwareVersion.entityManager() {
        EntityManager em = new SoftwareVersion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SoftwareVersion.countSoftwareVersions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SoftwareVersion o", Long.class).getSingleResult();
    }
    
    public static List<SoftwareVersion> SoftwareVersion.findAllSoftwareVersions() {
        return entityManager().createQuery("SELECT o FROM SoftwareVersion o", SoftwareVersion.class).getResultList();
    }
    
    public static List<SoftwareVersion> SoftwareVersion.findAllSoftwareVersions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SoftwareVersion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SoftwareVersion.class).getResultList();
    }
    
    public static SoftwareVersion SoftwareVersion.findSoftwareVersion(Long id) {
        if (id == null) return null;
        return entityManager().find(SoftwareVersion.class, id);
    }
    
    public static List<SoftwareVersion> SoftwareVersion.findSoftwareVersionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SoftwareVersion o", SoftwareVersion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SoftwareVersion> SoftwareVersion.findSoftwareVersionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SoftwareVersion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SoftwareVersion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SoftwareVersion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SoftwareVersion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SoftwareVersion attached = SoftwareVersion.findSoftwareVersion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SoftwareVersion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SoftwareVersion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SoftwareVersion SoftwareVersion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SoftwareVersion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
