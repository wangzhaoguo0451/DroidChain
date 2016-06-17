.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ticket:Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTicket()Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;->ticket:Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;

    return-object v0
.end method

.method public setTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;->ticket:Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;

    .line 75
    return-void
.end method
