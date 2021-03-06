// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.eol.maintenance.web;

import com.eol.maintenance.domain.BuildLayer;
import com.eol.maintenance.domain.SMMGroup;
import com.eol.maintenance.domain.SMMLine;
import com.eol.maintenance.domain.SoftwareVersion;
import com.eol.maintenance.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<BuildLayer, String> ApplicationConversionServiceFactoryBean.getBuildLayerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.eol.maintenance.domain.BuildLayer, java.lang.String>() {
            public String convert(BuildLayer buildLayer) {
                return new StringBuilder().append(buildLayer.getUuid()).append(' ').append(buildLayer.getName()).append(' ').append(buildLayer.getDescription()).append(' ').append(buildLayer.getIdx()).toString();
            }
        };
    }
    
    public Converter<Long, BuildLayer> ApplicationConversionServiceFactoryBean.getIdToBuildLayerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.eol.maintenance.domain.BuildLayer>() {
            public com.eol.maintenance.domain.BuildLayer convert(java.lang.Long id) {
                return BuildLayer.findBuildLayer(id);
            }
        };
    }
    
    public Converter<String, BuildLayer> ApplicationConversionServiceFactoryBean.getStringToBuildLayerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.eol.maintenance.domain.BuildLayer>() {
            public com.eol.maintenance.domain.BuildLayer convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), BuildLayer.class);
            }
        };
    }
    
    public Converter<Long, SMMGroup> ApplicationConversionServiceFactoryBean.getIdToSMMGroupConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.eol.maintenance.domain.SMMGroup>() {
            public com.eol.maintenance.domain.SMMGroup convert(java.lang.Long id) {
                return SMMGroup.findSMMGroup(id);
            }
        };
    }
    
    public Converter<String, SMMGroup> ApplicationConversionServiceFactoryBean.getStringToSMMGroupConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.eol.maintenance.domain.SMMGroup>() {
            public com.eol.maintenance.domain.SMMGroup convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SMMGroup.class);
            }
        };
    }
    
    public Converter<SMMLine, String> ApplicationConversionServiceFactoryBean.getSMMLineToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.eol.maintenance.domain.SMMLine, java.lang.String>() {
            public String convert(SMMLine sMMLine) {
                return new StringBuilder().append(sMMLine.getUuid()).append(' ').append(sMMLine.getUnitTime()).append(' ').append(sMMLine.getLabourRate()).append(' ').append(sMMLine.getProduct()).toString();
            }
        };
    }
    
    public Converter<Long, SMMLine> ApplicationConversionServiceFactoryBean.getIdToSMMLineConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.eol.maintenance.domain.SMMLine>() {
            public com.eol.maintenance.domain.SMMLine convert(java.lang.Long id) {
                return SMMLine.findSMMLine(id);
            }
        };
    }
    
    public Converter<String, SMMLine> ApplicationConversionServiceFactoryBean.getStringToSMMLineConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.eol.maintenance.domain.SMMLine>() {
            public com.eol.maintenance.domain.SMMLine convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SMMLine.class);
            }
        };
    }
    
    public Converter<Long, SoftwareVersion> ApplicationConversionServiceFactoryBean.getIdToSoftwareVersionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.eol.maintenance.domain.SoftwareVersion>() {
            public com.eol.maintenance.domain.SoftwareVersion convert(java.lang.Long id) {
                return SoftwareVersion.findSoftwareVersion(id);
            }
        };
    }
    
    public Converter<String, SoftwareVersion> ApplicationConversionServiceFactoryBean.getStringToSoftwareVersionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.eol.maintenance.domain.SoftwareVersion>() {
            public com.eol.maintenance.domain.SoftwareVersion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SoftwareVersion.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBuildLayerToStringConverter());
        registry.addConverter(getIdToBuildLayerConverter());
        registry.addConverter(getStringToBuildLayerConverter());
        registry.addConverter(getSMMGroupToStringConverter());
        registry.addConverter(getIdToSMMGroupConverter());
        registry.addConverter(getStringToSMMGroupConverter());
        registry.addConverter(getSMMLineToStringConverter());
        registry.addConverter(getIdToSMMLineConverter());
        registry.addConverter(getStringToSMMLineConverter());
        registry.addConverter(getSoftwareVersionToStringConverter());
        registry.addConverter(getIdToSoftwareVersionConverter());
        registry.addConverter(getStringToSoftwareVersionConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
