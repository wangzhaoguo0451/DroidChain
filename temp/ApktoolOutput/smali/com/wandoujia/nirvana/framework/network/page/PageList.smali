.class public abstract Lcom/wandoujia/nirvana/framework/network/page/PageList;
.super Leqw;
.source "PageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Leqw",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/nirvana/framework/network/page/PageList",
            "<TP;TT;>.erd;>;"
        }
    .end annotation
.end field

.field public e:Lerd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/nirvana/framework/network/page/PageList",
            "<TP;TT;>.erd;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leqx;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leqx",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1}, Leqw;-><init>(Leqx;)V

    .line 176
    new-instance v0, Lerd;

    invoke-direct {v0, p0}, Lerd;-><init>(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V

    iput-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->d:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->f:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    .line 181
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/nirvana/framework/network/page/PageList;Lerd;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1}, Lerd;->a()Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    move-result-object v7

    sget-object v0, Lerc;->a:[I

    invoke-virtual {v7}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Error, the page op was wrong"

    invoke-direct {p0, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->k()V

    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Error, the loading page order was wrong"

    invoke-direct {p0, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    invoke-virtual {p0, p2}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {v5}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lerd;

    invoke-direct {v0, p0}, Lerd;-><init>(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V

    iput-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    iput-object p2, v0, Lerd;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    invoke-virtual {p0, p2}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lerd;->c:Z

    new-instance v0, Leqz;

    if-nez v1, :cond_4

    iget-object v6, p1, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    sget-object v8, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_INTERMEDIATE:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    if-ne v6, v8, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-direct/range {v0 .. v6}, Leqz;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    invoke-virtual {p0, v7, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_0

    :cond_3
    move-object v4, v3

    goto :goto_1

    :cond_4
    move v6, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/nirvana/framework/network/page/PageList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 363
    const-class v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", has items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", has pages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next page status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    iget-object v1, v1, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    invoke-virtual {v1}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    return-void
.end method

.method private a(ZZ)V
    .locals 5
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start request start, clear data is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clear cache is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    iget-object v0, v2, Lerd;->a:Leqs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    const-string v1, "Start request skip, has on-going request"

    invoke-direct {v0, v1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    .line 248
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 247
    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, v2, Lerd;->c:Z

    if-nez v0, :cond_2

    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    const-string v1, "Start request skip, no need load more"

    invoke-direct {v0, v1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iput-boolean p1, v2, Lerd;->d:Z

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, v2, Lerd;->b:Ljava/lang/Object;

    :cond_3
    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    iget-object v3, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    iget-object v3, v3, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    iget-object v3, v3, Lerd;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2, v2}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/Object;Lagu;Lagt;)Leqs;

    move-result-object v0

    iput-object v0, v2, Lerd;->a:Leqs;

    iget-object v0, v2, Lerd;->a:Leqs;

    if-nez v0, :cond_4

    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    const-string v3, "Start request skip, the request is null"

    invoke-direct {v0, v3}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    iput-boolean v1, v2, Lerd;->c:Z

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->ONGOING:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v0, v2, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-virtual {v2}, Lerd;->a()Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V

    if-eqz p2, :cond_5

    iget-object v0, v2, Lerd;->a:Leqs;

    new-instance v1, Lequ;

    iget-object v3, v0, Leqs;->l:Leqr;

    invoke-interface {v3}, Leqr;->a()Lagr;

    move-result-object v3

    iget-object v3, v3, Lagr;->d:Lagh;

    invoke-virtual {v0}, Leqs;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lequ;-><init>(Lagh;Ljava/lang/String;)V

    iget-object v0, v0, Leqs;->l:Leqr;

    invoke-interface {v0}, Leqr;->a()Lagr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lagr;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_5
    iget-object v0, v2, Lerd;->a:Leqs;

    invoke-virtual {v0}, Leqs;->j()V

    iget-object v0, v2, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    const-string v1, "Start request success"

    invoke-direct {v0, v1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iget-object v0, p0, Leqw;->a:Leqx;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Leqw;->a:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 271
    :cond_0
    iget-object v0, p0, Leqw;->b:Leqx;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Leqw;->b:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 274
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lagu;Lagt;)Leqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lagu",
            "<TP;>;",
            "Lagt;",
            ")",
            "Leqs",
            "<TP;>;"
        }
    .end annotation
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)Z"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    iget-boolean v0, v0, Lerd;->c:Z

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(ZZ)V

    .line 223
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(ZZ)V

    .line 214
    return-void
.end method
