.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketFieldResponse;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ticket_field:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTicket_field()Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketFieldResponse;->ticket_field:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;

    return-object v0
.end method

.method public setTicket_field(Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketFieldResponse;->ticket_field:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;

    .line 177
    return-void
.end method
