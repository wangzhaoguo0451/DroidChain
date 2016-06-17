.class public final Lghl;
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
    .line 232
    iput-object p1, p0, Lghl;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iput-object p2, p0, Lghl;->a:Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a()Ldd;

    .line 236
    iget-object v0, p0, Lghl;->b:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iget-object v1, p0, Lghl;->a:Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V

    .line 239
    return-void
.end method
