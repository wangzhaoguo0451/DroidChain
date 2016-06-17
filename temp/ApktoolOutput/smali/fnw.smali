.class final Lfnw;
.super Landroid/os/AsyncTask;
.source "CommunityTab.java"


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
.field private synthetic a:Lfnv;


# direct methods
.method constructor <init>(Lfnv;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lfnw;->a:Lfnv;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a()Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lfkc;

    invoke-direct {v0}, Lfkc;-><init>()V

    .line 99
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
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
    .line 93
    invoke-static {}, Lfnw;->a()Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 93
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

    :try_start_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lfnw;->a:Lfnv;

    invoke-virtual {v1, v0}, Lfnv;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
