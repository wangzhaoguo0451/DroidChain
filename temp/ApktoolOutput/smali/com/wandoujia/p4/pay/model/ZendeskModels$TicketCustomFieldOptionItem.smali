.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;->id:I

    .line 143
    iput-object p2, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;->value:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;->id:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;->id:I

    .line 130
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;->value:Ljava/lang/String;

    .line 138
    return-void
.end method
