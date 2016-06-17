.class public Lcom/wandoujia/push2/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 95
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 89
    const-string v0, "push2_download"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lhaa;

    invoke-direct {v0, v3}, Lhaa;-><init>(B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "push2_download"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    iget-boolean v0, v0, Lgzu;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 52
    const-string v0, "push2_flag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lgzq;

    invoke-direct {v0}, Lgzq;-><init>()V

    const-string v1, "push2_id"

    const-string v2, "push2_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgzq;->a(Ljava/lang/String;Ljava/lang/String;)Lgzq;

    move-result-object v1

    const-string v2, "push2_title"

    const-string v3, "push2_title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgzq;->a(Ljava/lang/String;Ljava/lang/String;)Lgzq;

    const-string v1, "push2_delete_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v1

    iget-object v1, v1, Lgzu;->g:Lgzw;

    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Lgzw;->a(Landroid/content/Intent;)V

    invoke-static {p2}, Lcom/wandoujia/push2/PushReceiver;->a(Landroid/content/Intent;)V

    :cond_3
    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/push2/LogHelper$Action;

    invoke-static {v1, v0}, Ld;->a(Lcom/wandoujia/push2/LogHelper$Action;Lgzq;)V

    goto :goto_0

    .line 38
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 39
    :sswitch_0
    const-string v3, "com.wandoujia.push2.ARE_YOU_PUSH_CENTER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string v3, "phoenix.intent.action.PUSH_DOWNLOAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    .line 41
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/wandoujia/push2/PushReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v1

    invoke-static {}, Lgzu;->b()V

    iget-boolean v1, v1, Lgzu;->f:Z

    if-eqz v1, :cond_5

    const-string v1, "push_center"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    const-string v1, "last_push_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p1}, Ld;->v(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const-string v1, "last_push_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 44
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/wandoujia/push2/PushService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 49
    :pswitch_2
    invoke-static {p2}, Lcom/wandoujia/push2/PushReceiver;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 53
    :cond_6
    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_CANCELED:Lcom/wandoujia/push2/LogHelper$Action;

    invoke-static {v1, v0}, Ld;->a(Lcom/wandoujia/push2/LogHelper$Action;Lgzq;)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        -0x45e5283a -> :sswitch_1
        -0x31103578 -> :sswitch_2
        0x7052123a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
