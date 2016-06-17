.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;

.field private custom_fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private requester:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;

.field private subject:Ljava/lang/String;

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setComment(Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->comment:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;

    .line 92
    return-void
.end method

.method public setCustom_fields(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->custom_fields:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setRequester(Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->requester:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;

    .line 100
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->subject:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->tags:Ljava/util/ArrayList;

    .line 88
    return-void
.end method
