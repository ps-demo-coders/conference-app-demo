package com.globomantics.conference.data.dtos;

import java.math.BigDecimal;

public class AttendeeTicketDto {

    private Integer id;
    private AttendeeDto attendee;
    private TicketPriceDto ticketPrice;
    private DiscountCodeDto discountCode;
    private BigDecimal netPrice;

    public AttendeeTicketDto() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public AttendeeDto getAttendee() {
        return attendee;
    }

    public void setAttendee(AttendeeDto attendee) {
        this.attendee = attendee;
    }

    public TicketPriceDto getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(TicketPriceDto ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public DiscountCodeDto getDiscountCode() {
        return discountCode;
    }

    public void setDiscountCode(DiscountCodeDto discountCode) {
        this.discountCode = discountCode;
    }

    public BigDecimal getNetPrice() {
        return netPrice;
    }

    public void setNetPrice(BigDecimal netPrice) {
        this.netPrice = netPrice;
    }
}
