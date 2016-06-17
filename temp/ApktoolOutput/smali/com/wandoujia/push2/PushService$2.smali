.class Lcom/wandoujia/push2/PushService$2;
.super Landroid/content/BroadcastReceiver;
.source "PushService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/push2/PushService;


# direct methods
.method constructor <init>(Lcom/wandoujia/push2/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wandoujia/push2/PushService$2;->a:Lcom/wandoujia/push2/PushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 145
    invoke-virtual {p0, v3}, Lcom/wandoujia/push2/PushService$2;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 146
    const-string v1, "push_center"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v2

    invoke-virtual {v2, v3}, Lgzu;->a(Z)V

    .line 149
    iget-object v2, p0, Lcom/wandoujia/push2/PushService$2;->a:Lcom/wandoujia/push2/PushService;

    const-string v3, "last_push_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/wandoujia/push2/PushService;->a(Lcom/wandoujia/push2/PushService;J)V

    .line 150
    iget-object v0, p0, Lcom/wandoujia/push2/PushService$2;->a:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->c(Lcom/wandoujia/push2/PushService;)Z

    .line 152
    :cond_0
    invoke-static {}, Lcom/wandoujia/push2/PushService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has push server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-void
.end method
