package com.globomantics.conference.data.dtos;

import java.math.BigDecimal;

public class TicketPriceDto {

    private Integer id;
    private TicketTypeDto ticketType;
    private PricingCategoryDto pricingCategory;
    private BigDecimal basePrice;

    public TicketPriceDto() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public TicketTypeDto getTicketType() {
        return ticketType;
    }

    public void setTicketType(TicketTypeDto ticketType) {
        this.ticketType = ticketType;
    }

    public PricingCategoryDto getPricingCategory() {
        return pricingCategory;
    }

    public void setPricingCategory(PricingCategoryDto pricingCategory) {
        this.pricingCategory = pricingCategory;
    }

    public BigDecimal getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(BigDecimal basePrice) {
        this.basePrice = basePrice;
    }
}
