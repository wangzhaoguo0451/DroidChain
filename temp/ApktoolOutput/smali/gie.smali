.class public final Lgie;
.super Landroid/os/AsyncTask;
.source "VideoPlayHtml5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lgie;->b:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 641
    iput-object p2, p0, Lgie;->a:Ljava/lang/String;

    .line 642
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 647
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    new-instance v1, Lgif;

    new-instance v2, Lgih;

    iget-object v3, p0, Lgie;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lgih;-><init>(Ljava/lang/String;)V

    new-instance v3, Lgig;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgig;-><init>(B)V

    invoke-direct {v1, v2, v3}, Lgif;-><init>(Lgih;Lcom/wandoujia/rpc/http/processor/Processor;)V

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 637
    invoke-direct {p0}, Lgie;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 637
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgie;->b:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->o(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgie;->b:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->p(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    goto :goto_0
.end method
