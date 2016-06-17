.class public final Lghi;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lghi;->a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lghi;->a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Lghn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lghi;->a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Lghn;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/os/AsyncTask;)V

    .line 175
    :cond_0
    return-void
.end method
