// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.domain;

import com.eol.maintenance.domain.BuildLayer;
import com.eol.maintenance.domain.BuildLayerDataOnDemand;
import com.eol.maintenance.domain.BuildLayerIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BuildLayerIntegrationTest_Roo_IntegrationTest {
    
    declare @type: BuildLayerIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: BuildLayerIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: BuildLayerIntegrationTest: @Transactional;
    
    @Autowired
    BuildLayerDataOnDemand BuildLayerIntegrationTest.dod;
    
    @Test
    public void BuildLayerIntegrationTest.testCountBuildLayers() {
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", dod.getRandomBuildLayer());
        long count = BuildLayer.countBuildLayers();
        Assert.assertTrue("Counter for 'BuildLayer' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void BuildLayerIntegrationTest.testFindBuildLayer() {
        BuildLayer obj = dod.getRandomBuildLayer();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to provide an identifier", id);
        obj = BuildLayer.findBuildLayer(id);
        Assert.assertNotNull("Find method for 'BuildLayer' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'BuildLayer' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void BuildLayerIntegrationTest.testFindAllBuildLayers() {
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", dod.getRandomBuildLayer());
        long count = BuildLayer.countBuildLayers();
        Assert.assertTrue("Too expensive to perform a find all test for 'BuildLayer', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<BuildLayer> result = BuildLayer.findAllBuildLayers();
        Assert.assertNotNull("Find all method for 'BuildLayer' illegally returned null", result);
        Assert.assertTrue("Find all method for 'BuildLayer' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void BuildLayerIntegrationTest.testFindBuildLayerEntries() {
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", dod.getRandomBuildLayer());
        long count = BuildLayer.countBuildLayers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<BuildLayer> result = BuildLayer.findBuildLayerEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'BuildLayer' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'BuildLayer' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void BuildLayerIntegrationTest.testFlush() {
        BuildLayer obj = dod.getRandomBuildLayer();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to provide an identifier", id);
        obj = BuildLayer.findBuildLayer(id);
        Assert.assertNotNull("Find method for 'BuildLayer' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyBuildLayer(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'BuildLayer' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BuildLayerIntegrationTest.testMergeUpdate() {
        BuildLayer obj = dod.getRandomBuildLayer();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to provide an identifier", id);
        obj = BuildLayer.findBuildLayer(id);
        boolean modified =  dod.modifyBuildLayer(obj);
        Integer currentVersion = obj.getVersion();
        BuildLayer merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'BuildLayer' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BuildLayerIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", dod.getRandomBuildLayer());
        BuildLayer obj = dod.getNewTransientBuildLayer(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'BuildLayer' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'BuildLayer' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void BuildLayerIntegrationTest.testRemove() {
        BuildLayer obj = dod.getRandomBuildLayer();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuildLayer' failed to provide an identifier", id);
        obj = BuildLayer.findBuildLayer(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'BuildLayer' with identifier '" + id + "'", BuildLayer.findBuildLayer(id));
    }
    
}
