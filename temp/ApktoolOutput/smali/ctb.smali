.class final Lctb;
.super Ljava/lang/Object;
.source "WandoujiaDownload.java"

# interfaces
.implements Lepi;


# instance fields
.field private synthetic a:Lcta;


# direct methods
.method constructor <init>(Lcta;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lctb;->a:Lcta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lctb;->a:Lcta;

    invoke-static {v0}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 69
    invoke-virtual {v0}, Lcsw;->l()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {v0}, Lcsw;->a()V

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public final b(J)V
    .locals 5
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lctb;->a:Lcta;

    invoke-static {v0}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 78
    invoke-virtual {v0}, Lcsw;->l()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {v0}, Lcsw;->b()V

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public final c(J)V
    .locals 5
    .parameter

    .prologue
    .line 86
    invoke-static {}, Lcta;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request completed requestid = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lctb;->a:Lcta;

    invoke-static {v0}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 88
    invoke-virtual {v0}, Lcsw;->l()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0}, Lcsw;->c()V

    .line 93
    iget-object v1, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-virtual {v1}, Lcom/wandoujia/download2/DownloadInfo2;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lctb;->a:Lcta;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-static {v1, v2, v3, v0}, Lcta;->a(Lcta;Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V

    .line 95
    iget-object v1, p0, Lctb;->a:Lcta;

    invoke-static {v1}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lctb;->a:Lcta;

    invoke-static {v1}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v1

    iget-object v2, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-interface {v1, v2}, Lcsx;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    .line 98
    :cond_1
    iget-object v1, p0, Lctb;->a:Lcta;

    invoke-static {v1, v0}, Lcta;->a(Lcta;Lcsw;)V

    .line 103
    :cond_2
    return-void
.end method

.method public final d(J)V
    .locals 5
    .parameter

    .prologue
    .line 107
    invoke-static {}, Lcta;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request exception requestid = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lctb;->a:Lcta;

    invoke-static {v0}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 109
    invoke-virtual {v0}, Lcsw;->l()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lcsw;->d()V

    .line 111
    iget-object v1, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-virtual {v1}, Lcom/wandoujia/download2/DownloadInfo2;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lctb;->a:Lcta;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-static {v1, v2, v3, v0}, Lcta;->a(Lcta;Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V

    .line 113
    iget-object v1, p0, Lctb;->a:Lcta;

    invoke-static {v1}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lctb;->a:Lcta;

    invoke-static {v1}, Lcta;->b(Lcta;)Lcsx;

    move-result-object v1

    iget-object v2, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-interface {v1, v2}, Lcsx;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lctb;->a:Lcta;

    invoke-static {v1, v0}, Lcta;->a(Lcta;Lcsw;)V

    .line 121
    :cond_2
    return-void
.end method
