package com.eol.maintenance.domain;


import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Column;
//import javax.persistence.CascadeType;
import javax.persistence.EnumType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
//import javax.persistence.OneToMany;
import javax.persistence.Enumerated;
import javax.persistence.TableGenerator;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findSMMLinesByNameLike" })
public class SMMLine {

	
	
	@Id
	@TableGenerator(name = "tg", table = "hibernate_sequences", pkColumnName = "sequence_name", pkColumnValue = "smmline", valueColumnName = "sequence_next_hi_value", allocationSize = 100)
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "tg")
	@Column(name = "id")
	private Long id;	
	
	
	public SMMLine() {
		this.uuid = IdGenerator.createUUID();
		// TODO Idx is generated at th emoment - how do we get it
		this.idx = 999L;
	}



	/**
     */
	private Double unitTime;

	// /**
	// */
	// private Long version_;
	/**
     */

	private Long labourRate;

	/**
     */
	private Long product;

	/**
     */
	@NotNull
	@ManyToOne
	private SMMGroup smmGroup;

	/**
     */
	private Long labourQuantity;

	/**
     */
	private Long labourRateCost;

	/**
     */
	private Long materialQuantity;

	/**
     */
	@NotNull
	private Long uuid;

	/**
     */
	private BuildStage buildStage;

	/**
     */
	private Boolean schedule;

	/**
     */
	private Double labourTotal;

	/**
     */
	private Double materialTotal;

	/**
     */
	@Size(max = 255)
	private String buildStageText;

	/**
     */
	@Lob
	private String formula;

	/**
     */
	@Size(max = 255)
	private String description;

	/**
     */
	@NotNull
	@Size(max = 255)
	private String name;

	/**
     */
	private Long idx;

	/**
     */
	@NotNull
	private Double labourRoundTo = (double) 0.001;

	/**
     */
	private UOM labourUOM;

	/**
     */
	private Double materialMultiplier;

	/**
     */
	private Double materialRate;

	/**
     */
	@NotNull
	private Double materialRoundTo = (double) 0.001;;

	@Enumerated(EnumType.STRING)
	private SmmCalculation smmCalculation;

	@Enumerated(EnumType.STRING)
	private LabourGrade labourGrade;
	
	
    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Long getUuid() {
        return this.uuid;
    }
    
    public void setUuid(Long uuid) {
        this.uuid = uuid;
    }
    
	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof SMMLine)) {
			return false;
		}
		if (this.getId() == null) {
			return this == obj;
		} else {
			return this.getId() == ((SMMLine) obj).getId();
		}
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(this.getUuid()).toHashCode();
	}
}
