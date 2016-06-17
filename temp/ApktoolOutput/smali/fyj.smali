.class final Lfyj;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Lhbr;


# instance fields
.field final synthetic a:Lfyi;


# direct methods
.method constructor <init>(Lfyi;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lfyj;->a:Lfyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {p1}, Lfyi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lfyk;

    invoke-direct {v2, p0, v0}, Lfyk;-><init>(Lfyj;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {p1}, Lfyi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lfyl;

    invoke-direct {v2, p0, v0}, Lfyl;-><init>(Lfyj;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
