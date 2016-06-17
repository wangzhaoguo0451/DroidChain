.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author_id:J

.field private created_at:Ljava/util/Date;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;",
            ">;"
        }
    .end annotation
.end field

.field private ticket_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor_id()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->author_id:J

    return-wide v0
.end method

.method public getCreated_at()Ljava/util/Date;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->events:Ljava/util/List;

    return-object v0
.end method

.method public getTicket_id()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->ticket_id:J

    return-wide v0
.end method

.method public setAuthor_id(J)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->author_id:J

    .line 339
    return-void
.end method

.method public setCreated_at(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->created_at:Ljava/util/Date;

    .line 347
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->events:Ljava/util/List;

    .line 331
    return-void
.end method

.method public setTicket_id(J)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->ticket_id:J

    .line 327
    return-void
.end method
