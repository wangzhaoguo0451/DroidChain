.class final Lctc;
.super Ljava/lang/Object;
.source "WandoujiaDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcta;


# direct methods
.method constructor <init>(Lcta;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lctc;->a:Lcta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 198
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 199
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 200
    iget-object v0, p0, Lctc;->a:Lcta;

    invoke-static {v0}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 201
    iget-object v4, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    .line 202
    sget-object v5, Lcte;->a:[I

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    invoke-virtual {v4}, Lcom/wandoujia/download2/DownloadInfo2$State;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 212
    :goto_1
    iget-object v0, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :pswitch_0
    invoke-virtual {v0}, Lcsw;->g()V

    goto :goto_1

    .line 209
    :pswitch_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 216
    iget-object v3, p0, Lctc;->a:Lcta;

    invoke-static {v3, v0}, Lcta;->a(Lcta;Lcsw;)V

    .line 217
    iget-object v3, p0, Lctc;->a:Lcta;

    invoke-static {v3}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lctc;->a:Lcta;

    invoke-static {v3}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v3

    iget-object v4, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-interface {v3, v4}, Lcsx;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    .line 220
    :cond_1
    iget-object v3, p0, Lctc;->a:Lcta;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-static {v3, v4, v5, v0}, Lcta;->a(Lcta;Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V

    goto :goto_2

    .line 223
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lctc;->a:Lcta;

    invoke-static {v0}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lctc;->a:Lcta;

    invoke-static {v0}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v0

    invoke-interface {v0, v1}, Lcsx;->a(Ljava/util/List;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lctc;->a:Lcta;

    invoke-static {v0}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 227
    iget-object v0, p0, Lctc;->a:Lcta;

    invoke-static {v0}, Lcta;->c(Lcta;)V

    .line 229
    :cond_4
    return-void

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
