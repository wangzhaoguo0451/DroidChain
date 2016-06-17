.class final Lfej;
.super Landroid/os/AsyncTask;
.source "CommunityQueryGroupAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lfei;


# direct methods
.method constructor <init>(Lfei;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lfej;->a:Lfei;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Lcql;

    iget-object v2, p0, Lfej;->a:Lfei;

    invoke-static {v2}, Lfei;->a(Lfei;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfej;->a:Lfei;

    invoke-static {v3}, Lfei;->b(Lfei;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4}, Lcql;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;

    .line 44
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;->getResult()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;->getResult()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lfej;->a()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iget-object v0, p0, Lfej;->a:Lfei;

    invoke-static {v0}, Lfei;->c(Lfei;)Lfek;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfej;->a:Lfei;

    invoke-static {v0}, Lfei;->c(Lfei;)Lfek;

    move-result-object v0

    invoke-interface {v0, p1}, Lfek;->a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    :cond_0
    return-void
.end method
