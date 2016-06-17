.class public Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;
.super Ljava/lang/Object;
.source "PushEntityV1.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private download:Lcom/wandoujia/push/protocol/PushEntityV1$Download;

.field private intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

.field private intentV2:Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownload()Lcom/wandoujia/push/protocol/PushEntityV1$Download;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->download:Lcom/wandoujia/push/protocol/PushEntityV1$Download;

    return-object v0
.end method

.method public getIntent()Lcom/wandoujia/push/protocol/PushEntityV1$Intent;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

    return-object v0
.end method

.method public getIntentV2()Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intentV2:Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

    if-nez v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

    if-nez v1, :cond_1

    new-instance v0, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

    invoke-direct {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intentV2:Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intentV2:Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

    return-object v0

    .line 373
    :cond_1
    new-instance v0, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

    invoke-direct {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;-><init>()V

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;->setTarget(Ljava/lang/String;)V

    invoke-static {v1}, Ld;->a(Lcom/wandoujia/push/protocol/PushEntityV1$Intent;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;->setIntentUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDownload(Lcom/wandoujia/push/protocol/PushEntityV1$Download;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->download:Lcom/wandoujia/push/protocol/PushEntityV1$Download;

    .line 400
    return-void
.end method

.method public setIntentV2(Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intentV2:Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;

    .line 380
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->url:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ url is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", download is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->download:Lcom/wandoujia/push/protocol/PushEntityV1$Download;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;->intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
