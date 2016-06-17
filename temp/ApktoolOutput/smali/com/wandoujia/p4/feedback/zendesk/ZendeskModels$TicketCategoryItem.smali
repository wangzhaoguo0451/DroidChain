.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->name:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->value:Ljava/lang/String;

    .line 217
    return-void
.end method
