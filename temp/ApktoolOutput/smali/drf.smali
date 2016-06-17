.class public final Ldrf;
.super Ljava/lang/Object;
.source "AppFilterProcessorFactory.java"

# interfaces
.implements Leqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leqx",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Ldrf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 248
    .line 251
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :goto_0
    return-object p1

    .line 254
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    move v3, v4

    move v5, v0

    .line 255
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 256
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 258
    if-ne v3, v4, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v7, v2, 0x1

    if-le v1, v7, :cond_8

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 262
    :goto_2
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v3}, Ld;->K(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->o()Z

    move-result v3

    if-nez v3, :cond_4

    .line 264
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    add-int/lit8 v5, v5, 0x1

    .line 270
    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gt v5, v8, :cond_4

    .line 271
    :cond_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v3, v5

    .line 255
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v3

    move v3, v1

    goto :goto_1

    .line 275
    :cond_5
    if-nez v5, :cond_7

    if-ltz v3, :cond_7

    .line 277
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 279
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_3
    move-object p1, v6

    .line 287
    goto :goto_0

    .line 282
    :cond_7
    if-gt v5, v8, :cond_6

    if-lez v5, :cond_6

    if-ltz v3, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int v1, v3, v5

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_6

    .line 285
    add-int v0, v3, v5

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method
