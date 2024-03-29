// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.mercurius.web.jsf.converter;

import com.malsolo.mercurius.codes.domain.Country;
import com.malsolo.mercurius.codes.service.CountryService;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import org.springframework.beans.factory.annotation.Autowired;

privileged aspect CountryConverter_Roo_Converter {
    
    declare parents: CountryConverter implements Converter;
    
    declare @type: CountryConverter: @FacesConverter("com.malsolo.mercurius.web.jsf.converter.CountryConverter");
    
    @Autowired
    CountryService CountryConverter.countryService;
    
    public java.lang.Object CountryConverter.getAsObject(FacesContext context, UIComponent component, java.lang.String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return countryService.findCountry(id);
    }
    
    public java.lang.String CountryConverter.getAsString(FacesContext context, UIComponent component, java.lang.Object value) {
        return value instanceof Country ? ((Country) value).getId().toString() : "";
    }
    
}
