.class public final Lfog;
.super Landroid/os/AsyncTask;
.source "CommunityUnReadCountMenuView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lfog;->a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a()Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lfkc;

    invoke-direct {v0}, Lfkc;-><init>()V

    .line 67
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lfog;->a()Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfog;->a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->a(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lfog;->a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->a(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
