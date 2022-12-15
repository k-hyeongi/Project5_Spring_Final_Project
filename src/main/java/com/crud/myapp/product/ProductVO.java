package com.crud.myapp.product;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class ProductVO {
    private int seq;
    private int amount;
    private int price;
    private String code;
    private String category;
    private String name;
    private String isEvent;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date expdate;
    private Date regdate;

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public Date getExpdate() {
        return expdate;
    }

    public void setExpdate(Date expdate) {
        this.expdate = expdate;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public String getIsEvent() {
        return isEvent;
    }

    public void setIsEvent(String isEvent) {
        this.isEvent = isEvent;
    }
}
