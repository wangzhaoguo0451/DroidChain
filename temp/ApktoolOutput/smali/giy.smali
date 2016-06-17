.class public final Lgiy;
.super Landroid/os/AsyncTask;
.source "VideoDetailTabHostFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field private synthetic b:Lgja;

.field private synthetic c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lgja;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lgiy;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iput-object p2, p0, Lgiy;->b:Lgja;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lgiy;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ld;->c(J)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    move-result-object v0

    iput-object v0, p0, Lgiy;->a:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lgiy;->b:Lgja;

    iget-object v1, p0, Lgiy;->a:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-interface {v0, v1}, Lgja;->a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    return-void
.end method
