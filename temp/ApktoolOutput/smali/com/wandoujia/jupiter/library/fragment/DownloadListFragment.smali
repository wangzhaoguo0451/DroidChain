.class public Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;
.source "DownloadListFragment.java"


# instance fields
.field private final a:Ldcm;

.field private final b:Ldji;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lgls;

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;-><init>()V

    .line 55
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->a:Ldcm;

    .line 57
    new-instance v0, Ldji;

    invoke-direct {v0}, Ldji;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->b:Ldji;

    .line 265
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->n:Leqw;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->b:Ldji;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->c:Ljava/util/List;

    iput-object v1, v0, Ldji;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Lcom/wandoujia/ripple_framework/download/DownloadDataList;

    invoke-direct {v1, p1}, Lcom/wandoujia/ripple_framework/download/DownloadDataList;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->b:Ldji;

    iget-object v2, v1, Leqw;->b:Leqx;

    invoke-static {v0, v2}, Lhjv;->a(Leqx;Leqx;)Lhjv;

    move-result-object v0

    invoke-virtual {v1, v0}, Leqw;->a(Leqx;)V

    move-object v0, v1

    .line 159
    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;

    sget-object v2, Lham;->f:Lham;

    const-string v3, "event_bus"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhrx;

    invoke-virtual {v2, v0}, Lhrx;->a(Ljava/lang/Object;)V

    sget-object v2, Lham;->f:Lham;

    const-string v3, "app"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/appmanager/AppManager;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList;->d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v2, v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 160
    return-object v1
.end method

.method protected final a()Lum;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ldhz;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->a:Ldcm;

    invoke-direct {v0, v1}, Ldhz;-><init>(Lerv;)V

    return-object v0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Ldhx;

    invoke-direct {v0, p0}, Ldhx;-><init>(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->e:Landroid/os/AsyncTask;

    .line 184
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 0
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
    .line 188
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->n:Leqw;

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 195
    :cond_0
    return-void
.end method

.method protected final bridge synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->a:Ldcm;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 108
    new-instance v0, Ldhw;

    invoke-direct {v0, p0}, Ldhw;-><init>(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->d:Lgls;

    .line 138
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->d:Lgls;

    invoke-virtual {v0, v1}, Lgkr;->a(Lgls;)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    const-string v2, "download"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "download"

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->o:Ljava/lang/String;

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "view_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 77
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "view_config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onDestroy()V

    .line 205
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->e:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->stopAsyncTask(Landroid/os/AsyncTask;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->e:Landroid/os/AsyncTask;

    .line 209
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onDetach()V

    .line 144
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->d:Lgls;

    .line 147
    return-void
.end method

.method public onEventMainThread(Lhaq;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0c001b

    .line 220
    sget-object v0, Ldhy;->a:[I

    iget-object v1, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    :cond_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/api/proto/Action;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->n:Leqw;

    invoke-virtual {v2}, Leqw;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v3, :cond_2

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v7, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_TITLE_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v2, v7, :cond_1

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v7, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_TITLE_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v2, v7, :cond_4

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v7, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v2, v7, :cond_4

    invoke-virtual {v1, v8}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-static {v2}, Ld;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v8}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v4}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/util/List;)V

    :cond_5
    invoke-static {v5}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v2

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    invoke-virtual {v2, v4, v5}, Lgkr;->b(J)V

    goto :goto_1

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v1, 0x7f030182

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Ldhu;

    invoke-direct {v1}, Ldhu;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 101
    return-void
.end method
