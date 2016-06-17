.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$ForTicketId;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ticket:Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTicket()Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketDetail;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$ForTicketId;->ticket:Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketDetail;

    return-object v0
.end method
