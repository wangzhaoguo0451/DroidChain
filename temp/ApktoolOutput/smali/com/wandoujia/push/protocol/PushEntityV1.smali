.class public Lcom/wandoujia/push/protocol/PushEntityV1;
.super Lcom/wandoujia/push/protocol/StandardPushEntity;
.source "PushEntityV1.java"


# instance fields
.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private notification:Lcom/wandoujia/push/protocol/PushEntityV1$Notification;

.field private redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/wandoujia/push/protocol/StandardPushEntity;-><init>()V

    .line 355
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getNotification()Lcom/wandoujia/push/protocol/PushEntityV1$Notification;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->notification:Lcom/wandoujia/push/protocol/PushEntityV1$Notification;

    return-object v0
.end method

.method public getRedirect()Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

    return-object v0
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->extra:Ljava/util/Map;

    .line 438
    return-void
.end method

.method public setNotification(Lcom/wandoujia/push/protocol/PushEntityV1$Notification;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->notification:Lcom/wandoujia/push/protocol/PushEntityV1$Notification;

    .line 420
    return-void
.end method

.method public setRedirect(Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

    .line 428
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[msgType is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->destType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destDid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->destDid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destUid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->destUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notification is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->notification:Lcom/wandoujia/push/protocol/PushEntityV1$Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirect is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1;->redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
