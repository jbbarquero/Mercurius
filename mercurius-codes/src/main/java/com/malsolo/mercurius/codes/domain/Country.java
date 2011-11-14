package com.malsolo.mercurius.codes.domain;

import javax.persistence.Column;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "ISO_3166_1")
public class Country {

    @NotNull
    @Column(name = "NAME")
    @Size(max = 50)
    private String name;

    @NotNull
    @Column(name = "ALPHA_2")
    @Size(max = 2)
    private String code2;

    @NotNull
    @Column(name = "ALPHA_3")
    @Size(max = 3)
    private String code3;

    @Column(name = "YEAR_ISO")
    @Max(9999L)
    private int yeariso;

    @NotNull
    @Column(name = "CC_TLD")
    @Size(max = 4)
    private String ccTld;

    @Column(name = "NOTES")
    @Size(max = 100)
    private String notes;
}
