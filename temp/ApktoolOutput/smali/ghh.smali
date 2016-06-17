.class public final Lghh;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lghh;->a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lghh;->a:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
