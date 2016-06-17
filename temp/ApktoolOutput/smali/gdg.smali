.class final Lgdg;
.super Ljava/lang/Object;
.source "FirstDownloadTaskGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lhby;


# direct methods
.method constructor <init>(Lhby;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lgdg;->a:Lhby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lgdg;->a:Lhby;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 196
    return-void
.end method
