.class final Lexa;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-boolean p1, p0, Lexa;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 185
    invoke-static {}, Lewx;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "phoenix.intent.action.APP_CHECK_UPGRADE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lewx;->d()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 191
    iget-boolean v1, p0, Lexa;->a:Z

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x36ee80

    .line 193
    :goto_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->c()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 195
    return-void

    .line 191
    :cond_0
    const-wide/32 v4, 0x1499700

    goto :goto_0
.end method
