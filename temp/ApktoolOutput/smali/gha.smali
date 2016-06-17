.class public final Lgha;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"

# interfaces
.implements Lgho;


# instance fields
.field private synthetic a:Lgpi;

.field private synthetic b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lgpi;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lgha;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iput-object p2, p0, Lgha;->a:Lgpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lgha;->a:Lgpi;

    invoke-virtual {v0}, Lgpi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgha;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lgha;->a:Lgpi;

    invoke-virtual {v0}, Lgpi;->dismiss()V

    .line 115
    :cond_0
    return-void
.end method
