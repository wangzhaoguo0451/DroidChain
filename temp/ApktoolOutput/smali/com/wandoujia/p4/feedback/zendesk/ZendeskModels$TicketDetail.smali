.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketDetail;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketDetail;->id:J

    return-wide v0
.end method
