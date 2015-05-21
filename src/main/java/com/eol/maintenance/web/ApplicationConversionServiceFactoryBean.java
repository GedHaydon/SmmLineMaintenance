package com.eol.maintenance.web;

import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.roo.addon.web.mvc.controller.converter.RooConversionService;

import com.eol.maintenance.domain.SMMGroup;
import com.eol.maintenance.domain.SoftwareVersion;


/**
 * A central place to register application converters and formatters. 
 */
@RooConversionService
public class ApplicationConversionServiceFactoryBean extends FormattingConversionServiceFactoryBean {

	@SuppressWarnings("deprecation")
	@Override
	protected void installFormatters(FormatterRegistry registry) {
		super.installFormatters(registry);
		registry.addConverter(getSMMGroupToStringConverter());
		registry.addConverter(getSMMGroupToStringConverter());
	}
	
	public Converter <SMMGroup, String> getSMMGroupToStringConverter() {
        return new Converter<SMMGroup, String>() {
            public String convert(SMMGroup smmGroup) {
            	return smmGroup.getName();
            }
        };
	}
	
	public Converter <SoftwareVersion, String> getSoftwareVersionToStringConverter() {
        return new Converter<SoftwareVersion, String>() {
            public String convert(SoftwareVersion softwareVersion) {
                return new StringBuilder().append(softwareVersion.getDtype()).append(' ').append(softwareVersion.getMajorVersion()).append('.').append(softwareVersion.getMinorVersion()).toString();
            }
        };
	}
        
}
