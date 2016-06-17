.class public final Lgas;
.super Landroid/os/AsyncTask;
.source "FlvServerHelper.java"


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
.field private a:Ljava/lang/String;

.field private b:Lgau;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/player/flv/FlvResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lgau;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lgas;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lgas;->b:Lgau;

    .line 30
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lgau;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lgas;-><init>(Ljava/lang/String;Lgau;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Lgar;

    iget-object v1, p0, Lgas;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgar;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lesb;->c()Lfvt;

    move-result-object v1

    invoke-virtual {v0}, Lgar;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    new-instance v2, Lgat;

    invoke-direct {v2}, Lgat;-><init>()V

    invoke-virtual {v2}, Lgat;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lfvt;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lgas;->c:Ljava/util/List;

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lgas;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgas;->b:Lgau;

    iget-object v1, p0, Lgas;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lgau;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/player/flv/FlvResult;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/player/flv/FlvResult;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lgau;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->ERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgas;->b:Lgau;

    iget-object v0, v0, Lgau;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->ERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    goto :goto_0
.end method
