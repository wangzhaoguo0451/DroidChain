.class final Lehl;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lehp;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I

.field private synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Lehp;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lehl;->b:Ljava/lang/String;

    iput p2, p0, Lehl;->c:I

    iput-object p3, p0, Lehl;->d:Ljava/util/List;

    iput-object p4, p0, Lehl;->a:Lehp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {}, Lehi;->a()Lehi;

    move-result-object v0

    iget-object v2, p0, Lehl;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lehi;->a(Lehi;Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lehl;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 203
    iget-object v0, p0, Lehl;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    move-object v2, v0

    .line 213
    :goto_0
    if-eqz v2, :cond_3

    .line 214
    invoke-virtual {v2}, Lcom/wandoujia/entities/app/ApkObbInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/ApkObbInfo;->getSize()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lehi;->a(Ljava/util/List;J)Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    .line 219
    :goto_1
    invoke-static {}, Lehi;->a()Lehi;

    move-result-object v1

    iget-object v3, p0, Lehl;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lehi;->b(Lehi;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lehl;->a:Lehp;

    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lehm;

    invoke-direct {v3, p0, v2, v0}, Lehm;-><init>(Lehl;Lcom/wandoujia/entities/app/ApkObbInfo;Lcom/wandoujia/entities/app/DownloadUrl;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lehl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    .line 206
    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkObbInfo;->getCpuType()I

    move-result v3

    iget v4, p0, Lehl;->c:I

    if-ne v3, v4, :cond_2

    move-object v2, v0

    .line 208
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 216
    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method
