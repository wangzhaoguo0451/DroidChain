.class final Ldzr;
.super Landroid/os/AsyncTask;
.source "DailyRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ldzq;


# direct methods
.method constructor <init>(Ldzq;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Ldzr;->a:Ldzq;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 152
    invoke-static {}, Lg;->l()Lcom/wandoujia/launcher/launcher/models/RecommendListModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendListModel;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendListModel;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;

    iget-object v0, v0, Lcom/wandoujia/launcher/launcher/models/RecommendListModel$RecommendInfoModel;->date:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldzr;->a:Ldzq;

    iget-object v0, v0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->f(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldzr;->a:Ldzq;

    iget-object v0, v0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldzr;->a:Ldzq;

    invoke-virtual {v0}, Ldzq;->b()V

    goto :goto_0
.end method
