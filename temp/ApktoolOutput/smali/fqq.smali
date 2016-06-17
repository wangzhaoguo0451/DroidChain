.class final Lfqq;
.super Ljava/lang/Object;
.source "ResumeDownloadAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

.field private synthetic b:Lfqp;


# direct methods
.method constructor <init>(Lfqp;Lcom/wandoujia/ripple_framework/download/DownloadManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lfqq;->b:Lfqp;

    iput-object p2, p0, Lfqq;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lfqq;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfqq;->b:Lfqp;

    invoke-static {v1}, Lfqp;->a(Lfqp;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 61
    return-void
.end method
