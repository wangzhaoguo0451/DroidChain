.class final Ldxq;
.super Ljava/lang/Object;
.source "LauncherPreDownloader.java"

# interfaces
.implements Lefm;


# instance fields
.field private synthetic a:Ldxo;


# direct methods
.method constructor <init>(Ldxo;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Ldxq;->a:Ldxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ldxq;->a:Ldxo;

    invoke-virtual {v0}, Ldxo;->a()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Ldxq;->a:Ldxo;

    iget-object v0, v0, Ldxo;->a:Lcta;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcta;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
