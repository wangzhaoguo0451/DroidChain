.class final Lfus;
.super Landroid/os/AsyncTask;
.source "MyGiftSelectableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lfvq;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lfvq;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfvq;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lfun;


# direct methods
.method private constructor <init>(Lfun;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lfus;->b:Lfun;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfun;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lfus;-><init>(Lfun;)V

    return-void
.end method

.method private varargs a([Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lfvq;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfvq;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 104
    if-eqz p1, :cond_2

    .line 105
    aget-object v0, p1, v1

    iput-object v0, p0, Lfus;->a:Ljava/util/List;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    aget-object v0, p1, v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfvq;

    .line 110
    :try_start_0
    new-instance v4, Lfvv;

    invoke-direct {v4}, Lfvv;-><init>()V

    .line 111
    invoke-virtual {v4}, Lfvv;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxp;

    iget-object v5, v1, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v5}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkeyId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lfxp;->a:Ljava/lang/String;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lfxp;->b:Ljava/lang/String;

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lfxp;->c:Ljava/lang/String;

    .line 113
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;

    .line 114
    if-eqz v0, :cond_0

    const-string v4, "0"

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 123
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 97
    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lfus;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0e0344

    .line 97
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfus;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lfus;->b:Lfun;

    iget-object v1, p0, Lfus;->b:Lfun;

    invoke-static {v1}, Lfun;->a(Lfun;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0346

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfun;->a(Lfun;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lfus;->b:Lfun;

    iget-object v0, v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfus;->b:Lfun;

    iget-object v0, v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lfus;->b:Lfun;

    invoke-virtual {v0}, Lfun;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lfus;->b:Lfun;

    iget-object v1, p0, Lfus;->b:Lfun;

    invoke-static {v1}, Lfun;->b(Lfun;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfun;->a(Lfun;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfus;->b:Lfun;

    iget-object v1, p0, Lfus;->b:Lfun;

    invoke-static {v1}, Lfun;->c(Lfun;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfun;->a(Lfun;Ljava/lang/String;)V

    goto :goto_1
.end method
