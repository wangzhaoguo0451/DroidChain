.class public final Lgzx;
.super Landroid/os/AsyncTask;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/push2/protocol/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lgzu;


# direct methods
.method private constructor <init>(Lgzu;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lgzx;->a:Lgzu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgzu;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lgzx;-><init>(Lgzu;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lgzx;->a:Lgzu;

    invoke-static {v0}, Lgzu;->a(Lgzu;)Lhad;

    move-result-object v0

    invoke-virtual {v0}, Lhad;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8
    .parameter

    .prologue
    .line 213
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getExpired()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    iget-object v1, p0, Lgzx;->a:Lgzu;

    invoke-static {v1}, Lgzu;->a(Lgzu;)Lhad;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lhad;->a(J)V

    const-string v1, "PushClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message expired: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgzx;->a:Lgzu;

    invoke-static {v1}, Lgzu;->b(Lgzu;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getBodyProtocol()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzz;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lgzx;->a:Lgzu;

    invoke-static {v3, v1, v0}, Lgzu;->a(Lgzu;Lgzz;Lcom/wandoujia/push2/protocol/Message;)V

    goto :goto_0

    :cond_2
    return-void
.end method
