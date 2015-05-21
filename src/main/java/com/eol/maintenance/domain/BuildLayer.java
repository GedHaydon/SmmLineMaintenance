package com.eol.maintenance.domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.TableGenerator;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class BuildLayer {

	@Id
	@TableGenerator(name = "tg", table = "hibernate_sequences", pkColumnName = "sequence_name", pkColumnValue = "build_layer", valueColumnName = "sequence_next_hi_value", allocationSize = 100)
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "tg")
	@Column(name = "id")
	private Long id;

	@NotNull
	private String name;

	private String description;

	// @OneToMany(cascade = CascadeType.ALL, mappedBy = "buildLayer")
	// @OrderColumn(name = "idx")
	// @BatchSize(size = 200)
	// @Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
	// private List<Construction> constructions = new ArrayList<Construction>();

	private Long idx;

	private Boolean live;

	private Boolean required;

	@NotNull
	@ManyToOne
	private SoftwareVersion softwareVersion;

	@Lob
	private String helpFile;

	@NotNull
	private Long uuid;

	@Transient
	private String toolTipText;

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
		if (!(obj instanceof BuildLayer)) {
			return false;
		}
		if (this.getId() == null) {
			return this == obj;
		} else {
			return this.getId() == ((BuildLayer) obj).getId();
		}
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(this.getUuid()).toHashCode();
	}

}
