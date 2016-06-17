.class final Ldtg;
.super Landroid/os/AsyncTask;
.source "StartPageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ldtf;


# direct methods
.method constructor <init>(Ldtf;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ldtg;->a:Ldtf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    .line 51
    check-cast p1, [Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    sget-object v3, Ldth;->a:[I

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lhrm;->b()Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v4}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v4

    iget-object v5, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v5}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhrm;->a(Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v4, v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iget-object v0, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->description(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    goto :goto_1

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Ldtg;->a:Ldtf;

    iget-object v0, v0, Ldtf;->a:Ldti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldtg;->a:Ldtf;

    iget-object v0, v0, Ldtf;->a:Ldti;

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Ldti;->a:Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldti;->a:Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->a(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Leqw;->a(ILjava/util/List;)V

    iget-object v0, v0, Ldti;->a:Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->e()Lhaw;

    move-result-object v0

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    :cond_0
    iget-object v0, p0, Ldtg;->a:Ldtf;

    const/4 v1, 0x0

    iput-object v1, v0, Ldtf;->a:Ldti;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
