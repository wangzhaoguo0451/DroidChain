.class public final Lghk;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

.field private synthetic b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lghk;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iput-object p2, p0, Lghk;->a:Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-static {}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a()Ldd;

    .line 216
    iget-object v0, p0, Lghk;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->d(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Z

    .line 219
    iget-object v0, p0, Lghk;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iget-object v1, p0, Lghk;->a:Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V

    .line 220
    return-void
.end method
