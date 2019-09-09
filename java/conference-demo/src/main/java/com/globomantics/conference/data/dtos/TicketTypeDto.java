package com.globomantics.conference.data.dtos;

public class TicketTypeDto {

    private String code;
    private String name;
    private String description;
    private boolean includesWorkshop;

    public TicketTypeDto() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isIncludesWorkshop() {
        return includesWorkshop;
    }

    public void setIncludesWorkshop(boolean includesWorkshop) {
        this.includesWorkshop = includesWorkshop;
    }
}
