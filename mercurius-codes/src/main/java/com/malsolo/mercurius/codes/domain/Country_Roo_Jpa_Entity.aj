// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.mercurius.codes.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Country_Roo_Jpa_Entity {
    
    declare @type: Country: @Entity;
    
    declare @type: Country: @Table(name = "ISO_3166_1");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private java.lang.Long Country.id;
    
    @Version
    @Column(name = "version")
    private java.lang.Integer Country.version;
    
    public java.lang.Long Country.getId() {
        return this.id;
    }
    
    public void Country.setId(java.lang.Long id) {
        this.id = id;
    }
    
    public java.lang.Integer Country.getVersion() {
        return this.version;
    }
    
    public void Country.setVersion(java.lang.Integer version) {
        this.version = version;
    }
    
}
