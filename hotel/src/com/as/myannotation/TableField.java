package com.as.myannotation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Documented
@Retention(RUNTIME)
@Target(FIELD)
public @interface TableField {

	/**
	 * false 表示表中没有该字段
	 * true 表示表中有该字段
	 * @return
	 */
	public boolean required() default false;
}
