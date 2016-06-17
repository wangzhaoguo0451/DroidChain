.class public abstract Lhaz;
.super Lern;
.source "PageListAdapter.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lern",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Leqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lhas;

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lhas;

    invoke-direct {v0}, Lhas;-><init>()V

    invoke-direct {p0, v0}, Lhaz;-><init>(Lhas;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lhas;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lern;-><init>()V

    .line 32
    new-instance v0, Leqy;

    invoke-direct {v0}, Leqy;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhaz;->g:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lhaz;->f:Lhas;

    .line 55
    return-void
.end method

.method private static a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 232
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhaz;->e:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhaz;->a(Ljava/util/List;)Z

    .line 86
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lhaz;->e:Leqw;

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 206
    const-string v0, "The data size not match, origin is %d, adapter has %d"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lhaz;->e:Leqw;

    invoke-virtual {v3}, Leqw;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "RippleAdapter"

    invoke-static {v3, v0, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v1, v2

    .line 209
    :goto_0
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->d:I

    if-eq v1, v0, :cond_3

    .line 211
    const-string v3, "The position not match, need position %d, but is %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "RippleAdapter"

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 189
    :goto_0
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iput p1, v0, Lcom/wandoujia/ripple_framework/model/Model;->d:I

    .line 189
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private h(I)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iput p1, v0, Lcom/wandoujia/ripple_framework/model/Model;->d:I

    .line 196
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lhaz;->e:Leqw;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v3, "loading success. op %s, position=%d, at=%s, prev=%s, size=%d"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    iget v0, p2, Leqz;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p2, Leqz;->c:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Lhaz;->a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    iget-object v0, p2, Leqz;->d:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Lhaz;->a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v5, 0x4

    iget-object v0, p2, Leqz;->e:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "RippleAdapter"

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget v3, p2, Leqz;->a:I

    .line 99
    iget-object v4, p2, Leqz;->e:Ljava/util/List;

    .line 100
    invoke-virtual {p0, v3}, Lhaz;->f(I)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v5

    .line 101
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lhaz;->f(I)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    .line 102
    const-string v6, "verify. position=%d, at=%s, prev=%s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5}, Lhaz;->a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0}, Lhaz;->a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, "RippleAdapter"

    invoke-static {v8, v6, v7}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    if-ltz v3, :cond_2

    iget-object v6, p2, Leqz;->c:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, p2, Leqz;->c:Ljava/lang/Object;

    invoke-static {v6, v5}, Leqy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    .line 104
    :cond_2
    const-string v0, "verify fail"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RippleAdapter"

    invoke-static {v2, v0, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lhaz;->d()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p2, Leqz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 103
    :cond_4
    iget-object v6, p2, Leqz;->d:Ljava/lang/Object;

    if-eqz v6, :cond_5

    iget-object v6, p2, Leqz;->d:Ljava/lang/Object;

    invoke-static {v6, v0}, Leqy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2

    .line 108
    :cond_6
    const-string v0, "verify success"

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "RippleAdapter"

    invoke-static {v7, v0, v6}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v0, Lhbb;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-direct {p0}, Lhaz;->d()V

    .line 146
    invoke-direct {p0, v1}, Lhaz;->g(I)V

    .line 149
    :cond_7
    :goto_3
    invoke-direct {p0}, Lhaz;->e()V

    .line 151
    iget-object v0, p0, Lhaz;->e:Leqw;

    invoke-virtual {v0}, Leqw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Leqz;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lhaz;->e:Leqw;

    invoke-virtual {v0}, Leqw;->g()V

    goto/16 :goto_0

    .line 111
    :pswitch_0
    const-string v0, "add data at %d, size %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "RippleAdapter"

    invoke-static {v1, v0, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0, v3, v4}, Lhaz;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    invoke-direct {p0, v3}, Lhaz;->g(I)V

    goto :goto_3

    .line 117
    :pswitch_1
    const-string v0, "update data at %d, size %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "RippleAdapter"

    invoke-static {v6, v0, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_8

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update only support one single item!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_8
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lhaz;->b(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    invoke-direct {p0, v3}, Lhaz;->h(I)V

    goto/16 :goto_3

    .line 126
    :pswitch_2
    const-string v0, "update data at %d, size %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "RippleAdapter"

    invoke-static {v2, v0, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0, v3, v4}, Lhaz;->b(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 129
    add-int v0, v3, v1

    invoke-direct {p0, v0}, Lhaz;->h(I)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 134
    :pswitch_3
    invoke-virtual {p0, v5}, Lhaz;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    invoke-direct {p0, v3}, Lhaz;->g(I)V

    goto/16 :goto_3

    .line 139
    :pswitch_4
    iget v0, p2, Leqz;->a:I

    iget v4, p2, Leqz;->b:I

    iget-object v5, p0, Lerv;->d:Ljava/util/List;

    if-eqz v5, :cond_9

    if-ltz v0, :cond_9

    add-int v5, v0, v4

    iget-object v6, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_9

    iget-object v5, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v5, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lerv;->d:Ljava/util/List;

    add-int v6, v0, v4

    iget-object v7, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lerv;->d:Ljava/util/List;

    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0, v4}, Lerv;->c(II)V

    move v1, v2

    :cond_9
    if-eqz v1, :cond_7

    .line 140
    invoke-direct {p0, v3}, Lhaz;->g(I)V

    goto/16 :goto_3

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public final a(Lerw;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lern;->a(Lerw;)V

    .line 65
    invoke-virtual {p1}, Lerw;->e()I

    move-result v0

    invoke-virtual {p0}, Lhaz;->a()I

    move-result v1

    iget-object v2, p0, Lhaz;->e:Leqw;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhaz;->e:Leqw;

    invoke-virtual {v2}, Leqw;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhaz;->e:Leqw;

    invoke-virtual {v2}, Leqw;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lhaz;->g:Landroid/os/Handler;

    new-instance v1, Lhba;

    invoke-direct {v1, p0}, Lhba;-><init>(Lhaz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_1
    return-void
.end method

.method public final b(I)J
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Lern;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic b(Lux;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    check-cast p1, Lerw;

    invoke-virtual {p0, p1}, Lhaz;->a(Lerw;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lern;->c()V

    .line 71
    iget-object v0, p0, Lhaz;->f:Lhas;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lhaz;->f:Lhas;

    iget-object v1, v0, Lhas;->b:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lhas;->b:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a()V

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lhas;->b:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    .line 74
    :cond_0
    return-void
.end method

.method protected final e(I)I
    .locals 1
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lhaz;->f(I)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->m:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v0

    return v0
.end method

.method public final f(I)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lhaz;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
