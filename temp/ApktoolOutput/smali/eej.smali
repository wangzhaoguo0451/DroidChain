.class final Leej;
.super Ljava/lang/Object;
.source "OpenAppAction.java"

# interfaces
.implements Leey;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 41
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->a()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 43
    :cond_0
    return-void
.end method
