.class public final Lhcc;
.super Ljava/lang/Object;
.source "MemDataOperator.java"

# interfaces
.implements Lhde;


# instance fields
.field private synthetic a:Lhcl;

.field private synthetic b:Lhcb;


# direct methods
.method public constructor <init>(Lhcb;Lhcl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lhcc;->b:Lhcb;

    iput-object p2, p0, Lhcc;->a:Lhcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lhcc;->b:Lhcb;

    invoke-static {v0}, Lhcb;->a(Lhcb;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 80
    iget-object v2, p0, Lhcc;->b:Lhcb;

    invoke-static {v2, v0}, Lhcb;->a(Lhcb;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lhcc;->b:Lhcb;

    invoke-static {v0}, Lhcb;->b(Lhcb;)Z

    .line 83
    iget-object v1, p0, Lhcc;->a:Lhcl;

    iget-object v0, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    sget-object v2, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_INFO_LOADED:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Lhcb;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    sget-object v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lhcb;->a([Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v3, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    sget-object v4, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v3, v0, v4}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->e(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    iget-object v0, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->e(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;

    if-eqz v0, :cond_0

    sget-object v2, Lhbq;->a:[I

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v2, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-static {v2, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_2

    :pswitch_1
    iget-object v2, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v2, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_2

    :pswitch_2
    iget-object v2, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->c:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v2, v3, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    goto :goto_2

    :pswitch_3
    iget-object v2, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v2, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_2

    :pswitch_4
    iget-object v2, v1, Lhcl;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v2, v0, v5}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
