.class final Lfyq;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/download/DownloadRequest;

.field private synthetic b:Lfyi;


# direct methods
.method constructor <init>(Lfyi;Lcom/wandoujia/launcher_base/download/DownloadRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lfyq;->b:Lfyi;

    iput-object p2, p0, Lfyq;->a:Lcom/wandoujia/launcher_base/download/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lfyq;->b:Lfyi;

    iget-object v1, p0, Lfyq;->a:Lcom/wandoujia/launcher_base/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lfyi;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 218
    return-void
.end method
