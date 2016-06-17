.class public final Lbnt;
.super Ljava/lang/Object;
.source "ResultPointCallback.java"


# instance fields
.field private a:Lcom/wandoujia/plugin/qr/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/plugin/qr/ViewfinderView;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lbnt;->a:Lcom/wandoujia/plugin/qr/ViewfinderView;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lbns;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lbnt;->a:Lcom/wandoujia/plugin/qr/ViewfinderView;

    iget-object v1, v0, Lcom/wandoujia/plugin/qr/ViewfinderView;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0xa

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
