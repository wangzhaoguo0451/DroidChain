.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private body:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;->body:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;->body:Ljava/lang/String;

    .line 117
    return-void
.end method
