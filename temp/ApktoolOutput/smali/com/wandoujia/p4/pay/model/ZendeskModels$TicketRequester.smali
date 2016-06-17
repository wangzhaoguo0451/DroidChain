.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->email:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->name:Ljava/lang/String;

    .line 157
    return-void
.end method
