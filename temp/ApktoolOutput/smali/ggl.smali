.class public final Lggl;
.super Ljava/lang/Object;
.source "VideoDetailOperationBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lggn;

.field public final synthetic b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field public final synthetic c:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

.field public final synthetic d:Lggi;


# direct methods
.method constructor <init>(Lggi;Lggn;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lggl;->d:Lggi;

    iput-object p2, p0, Lggl;->a:Lggn;

    iput-object p3, p0, Lggl;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object p4, p0, Lggl;->c:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20
    .parameter

    .prologue
    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/app/Activity;)Lcom/wandoujia/p4/views/CommonPopupView;

    move-result-object v6

    .line 181
    invoke-static {v6}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;

    move-result-object v7

    .line 183
    invoke-virtual {v6, v7}, Lcom/wandoujia/p4/views/CommonPopupView;->setContentView(Landroid/view/View;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lggl;->a:Lggn;

    iget-object v8, v3, Lggn;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lggl;->d:Lggi;

    iget-object v9, v3, Lggi;->d:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lggl;->d:Lggi;

    iget-object v10, v3, Lggi;->e:Ljava/util/Set;

    new-instance v11, Lgpq;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lgpq;-><init>(Lggl;)V

    new-instance v12, Lgpp;

    invoke-direct {v12, v6}, Lgpp;-><init>(Lcom/wandoujia/p4/views/CommonPopupView;)V

    new-instance v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-direct {v3}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;-><init>()V

    iput-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->i:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {}, Lcom/wandoujia/p4/video/model/VideoSharpness;->values()[Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v14

    array-length v15, v14

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v15, :cond_0

    aget-object v16, v14, v5

    new-instance v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    invoke-virtual/range {v16 .. v16}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getChineseName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/wandoujia/p4/video/model/VideoSharpness;->name()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_7

    iget-object v0, v8, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_7

    iget-object v4, v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->alias:Ljava/lang/String;

    invoke-static {v4}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v4

    iput-object v4, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->d:Lcom/wandoujia/p4/video/model/VideoSharpness;

    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->i:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    new-instance v5, Lgpn;

    invoke-direct {v5, v7}, Lgpn;-><init>(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)V

    invoke-virtual {v3, v4, v13, v5}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;Ljava/util/List;Lgfq;)V

    iget-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->b:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    iget-object v4, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->i:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v14, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v3, v15, v0}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v10, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v10, v3, v14, v15}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_6

    iget-object v10, v8, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, v8, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    iget-object v13, v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v4, v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    iput-object v4, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->e:Ljava/lang/String;

    iget-boolean v4, v8, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->isDefaultDownloadSourcePrivate:Z

    iput-boolean v4, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->f:Z

    :goto_5
    move-object v4, v3

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-direct {v3}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;-><init>()V

    iput-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->h:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    iget-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->h:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    new-instance v8, Lgpo;

    invoke-direct {v8, v7}, Lgpo;-><init>(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)V

    invoke-virtual {v3, v4, v5, v8}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;Ljava/util/List;Lgfq;)V

    iget-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->c:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    iget-object v4, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->h:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_6
    iput-object v11, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->g:Lgpq;

    iput-object v12, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->j:Lgpp;

    .line 206
    invoke-virtual {v6}, Lcom/wandoujia/p4/views/CommonPopupView;->a()V

    .line 207
    return-void

    .line 184
    :cond_5
    iget-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->c:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/view/NoScrollGridView;->setVisibility(I)V

    iget-object v3, v7, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->a:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    move-object v3, v4

    goto :goto_5

    :cond_7
    move-object v3, v4

    goto/16 :goto_1
.end method
