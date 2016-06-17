.class public Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;
.super Ljava/lang/Object;
.source "LocalSceneInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x33cacf53815ab2a7L


# instance fields
.field private closed:Z

.field private closedTime:J

.field private notifyCancelled:Z

.field private notifySuggestionId:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closed:Z

    .line 13
    iput-wide v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closedTime:J

    .line 14
    iput-wide v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifySuggestionId:J

    .line 15
    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifyCancelled:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;-><init>()V

    .line 35
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closed:Z

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->setClosed(Z)V

    .line 36
    iget-wide v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closedTime:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->setClosedTime(J)V

    .line 37
    iget-wide v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifySuggestionId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->setNotifySuggestionId(J)V

    .line 38
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifyCancelled:Z

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->setNotifyCancelled(Z)V

    .line 39
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->clone()Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;

    .line 63
    iget-boolean v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closed:Z

    iget-boolean v3, p1, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closed:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closedTime:J

    iget-wide v4, p1, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closedTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifySuggestionId:J

    iget-wide v4, p1, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifySuggestionId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifyCancelled:Z

    iget-boolean v3, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifyCancelled:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getClosedTime()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closedTime:J

    return-wide v0
.end method

.method public getNotifySuggestionId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifySuggestionId:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closed:Z

    return v0
.end method

.method public isNotifyCancelled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifyCancelled:Z

    return v0
.end method

.method public setClosed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closed:Z

    .line 23
    return-void
.end method

.method public setClosedTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->closedTime:J

    .line 31
    return-void
.end method

.method public setNotifyCancelled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifyCancelled:Z

    .line 56
    return-void
.end method

.method public setNotifySuggestionId(J)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/wandoujia/ripple_framework/model/LocalSceneInfo;->notifySuggestionId:J

    .line 48
    return-void
.end method
