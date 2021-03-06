package cn.com.carit.market.bean;

import java.io.Serializable;

/**
 * 系统字段设置表
 * @author <a href="mailto:xiegengcai@gmail.com">Xie Gengcai</a>
 * 2012-5-12
 */
public class BaseField extends BaseBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7296441136375402613L;

	/**
	 * 字段
	 */
	private String field;

	/**
	 * 字段名称
	 */
	private String fieldName;

	/**
	 * 字段值
	 */
	private Integer fieldValue;

	/**
	 * 字段显示值
	 */
	private String displayValue;

	/**
	 * 是否启用 0 ：停用；1：启用
	 */
	private Byte enabled;

	/**
	 * 排序
	 */
	private Integer sort;
	
	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public Integer getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(Integer fieldValue) {
		this.fieldValue = fieldValue;
	}

	public String getDisplayValue() {
		return displayValue;
	}

	public void setDisplayValue(String displayValue) {
		this.displayValue = displayValue;
	}

	public Byte getEnabled() {
		return enabled;
	}

	public void setEnabled(Byte enabled) {
		this.enabled = enabled;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
}