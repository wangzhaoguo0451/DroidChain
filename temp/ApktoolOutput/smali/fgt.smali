.class public final Lfgt;
.super Landroid/os/AsyncTask;
.source "CommunityBallotStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lfgt;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lfgt;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lfgt;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ldyk;

    iget-object v2, p0, Lfgt;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ldyk;-><init>(Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
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
    .line 120
    invoke-direct {p0}, Lfgt;->a()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfgt;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfgt;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    goto :goto_0
.end method
