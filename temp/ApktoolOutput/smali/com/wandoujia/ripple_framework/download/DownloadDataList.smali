.class public final Lcom/wandoujia/ripple_framework/download/DownloadDataList;
.super Leqw;
.source "DownloadDataList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leqw",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lhcp;

.field private final h:Lhbl;

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leqw;-><init>(Leqx;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    .line 47
    new-instance v0, Lhbi;

    invoke-direct {v0, p0}, Lhbi;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadDataList;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 100
    new-instance v0, Lhbl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhbl;-><init>(B)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    .line 101
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Leqx;)V

    .line 102
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->e:Ljava/lang/String;

    .line 103
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v0, v0, Lhcb;->f:Lhcp;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->g:Lhcp;

    .line 106
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadDataList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadDataList;Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadDataList;Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadDataList;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 226
    sget v1, Lcom/wandoujia/ripple_framework/R$id;->download_info:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 227
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-static {v3, v2}, Lhbl;->a(Lhbl;I)Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    move-result-object v3

    .line 229
    invoke-static {p1}, Lhbl;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    move-result-object v4

    .line 230
    if-eq v3, v4, :cond_1

    .line 231
    invoke-direct {p0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 232
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Ljava/util/List;)V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    sget v1, Lcom/wandoujia/ripple_framework/R$id;->download_info:I

    invoke-virtual {v0, v1, p1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 235
    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v3, Leqz;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v2, v0, v4, v5}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v1, v3}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_1

    .line 240
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 241
    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 10
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
    const/4 v9, 0x0

    .line 276
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 278
    invoke-static {v0}, Lhbl;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    move-result-object v1

    .line 279
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v5, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->id_string(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    sget-object v6, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DOWNLOAD_ITEM:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    sget v5, Lcom/wandoujia/ripple_framework/R$id;->download_info:I

    invoke-virtual {v4, v5, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->values()[Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 285
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-virtual {v0, v5}, Lhbl;->a(Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;)I

    move-result v6

    .line 289
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-virtual {v0, v5}, Lhbl;->b(Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;)I

    move-result v0

    if-nez v0, :cond_3

    .line 290
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 292
    #calls: Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->getHeaderModel()Lcom/wandoujia/ripple_framework/model/Model;
    invoke-static {v5}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->access$1100(Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v0, v6, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 295
    iget-object v8, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v5, v0}, Lhbl;->a(Lhbl;Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;I)V

    .line 296
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v5, Leqz;

    invoke-direct {v5, v6, v9, v9, v7}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v0, v5}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 284
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 299
    :cond_3
    iget-object v7, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v7, v8, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 300
    iget-object v7, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v7, v5, v0}, Lhbl;->a(Lhbl;Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;I)V

    .line 301
    sget-object v7, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v8, Leqz;

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v8, v6, v9, v9, v0}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v7, v8}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_2

    .line 305
    :cond_4
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 139
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V

    .line 140
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->g:Lhcp;

    new-instance v1, Lhbj;

    invoke-direct {v1, p0, p1}, Lhbj;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadDataList;Z)V

    iget-object v2, v0, Lhcp;->a:Landroid/os/Handler;

    new-instance v3, Lhdb;

    invoke-direct {v3, v0, v1}, Lhdb;-><init>(Lhcp;Lhde;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method private b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 245
    .line 246
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 247
    sget v4, Lcom/wandoujia/ripple_framework/R$id;->download_info:I

    invoke-virtual {v0, v4}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 248
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 252
    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 268
    :goto_1
    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-static {v0, v1}, Lhbl;->a(Lhbl;I)Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    move-result-object v3

    .line 257
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    iget-object v4, v0, Lhbl;->a:Ljava/util/Map;

    iget-object v0, v0, Lhbl;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->h:Lhbl;

    invoke-virtual {v0, v3}, Lhbl;->b(Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;)I

    move-result v0

    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v2, Leqz;

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Leqz;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_1

    .line 265
    :cond_3
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v2, Leqz;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3, v5, v5}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/download/DownloadDataList;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->i:Z

    return v0
.end method

.method private c(I)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->c(I)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    return-object v0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Z)V

    .line 131
    return-void
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Z)V

    .line 136
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Leqw;->i()V

    .line 171
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 172
    return-void
.end method

.method public final j()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 309
    invoke-super {p0}, Leqw;->j()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->c(I)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public final onEventMainThread(Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    sget-object v0, Lhbk;->a:[I

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 181
    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_1

    .line 185
    :pswitch_2
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 186
    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_2

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onEventMainThread(Lhaq;)V
    .locals 8
    .parameter

    .prologue
    .line 193
    sget-object v0, Lhbk;->b:[I

    iget-object v1, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    :cond_0
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    .line 199
    sget v2, Lcom/wandoujia/ripple_framework/R$id;->download_info:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 200
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v4, Leqz;

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v1, v6, v7}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v2, v4}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
