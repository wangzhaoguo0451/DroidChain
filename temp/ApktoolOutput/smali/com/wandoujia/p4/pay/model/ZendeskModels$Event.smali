.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author_id:J

.field private body:Ljava/lang/String;

.field private public_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->public_:Z

    return-void
.end method


# virtual methods
.method public getAuthor_id()J
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->author_id:J

    return-wide v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->body:Ljava/lang/String;

    return-object v0
.end method

.method public isPublic_()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->public_:Z

    return v0
.end method

.method public setAuthor_id(J)V
    .locals 1
    .parameter

    .prologue
    .line 369
    iput-wide p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->author_id:J

    .line 370
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->body:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setPublic_(Z)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Event;->public_:Z

    .line 362
    return-void
.end method
