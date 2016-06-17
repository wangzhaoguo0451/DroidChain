.class Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;
.super Landroid/os/AsyncTask;
.source "Fetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mSize:I

.field private mStart:I

.field final synthetic this$0:Lcom/wandoujia/p4/pay/loader/Fetcher;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/loader/Fetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->this$0:Lcom/wandoujia/p4/pay/loader/Fetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 42
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 43
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mStart:I

    .line 44
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mSize:I

    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->this$0:Lcom/wandoujia/p4/pay/loader/Fetcher;

    #getter for: Lcom/wandoujia/p4/pay/loader/Fetcher;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/loader/Fetcher;->access$000(Lcom/wandoujia/p4/pay/loader/Fetcher;)Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mStart:I

    iget v2, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mSize:I

    invoke-interface {v0, v1, v2}, Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;->doFetch(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->this$0:Lcom/wandoujia/p4/pay/loader/Fetcher;

    #getter for: Lcom/wandoujia/p4/pay/loader/Fetcher;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/loader/Fetcher;->access$000(Lcom/wandoujia/p4/pay/loader/Fetcher;)Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    move-result-object v1

    iget v2, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mStart:I

    iget v3, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mSize:I

    invoke-interface {v1, v0, v2, v3}, Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;->onFetched(Ljava/lang/String;II)I

    move-result v1

    .line 49
    if-lez v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->this$0:Lcom/wandoujia/p4/pay/loader/Fetcher;

    iget v3, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mStart:I

    add-int/2addr v1, v3

    #setter for: Lcom/wandoujia/p4/pay/loader/Fetcher;->curSize:I
    invoke-static {v2, v1}, Lcom/wandoujia/p4/pay/loader/Fetcher;->access$102(Lcom/wandoujia/p4/pay/loader/Fetcher;I)I

    .line 54
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->this$0:Lcom/wandoujia/p4/pay/loader/Fetcher;

    #getter for: Lcom/wandoujia/p4/pay/loader/Fetcher;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/loader/Fetcher;->access$000(Lcom/wandoujia/p4/pay/loader/Fetcher;)Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mStart:I

    iget v2, p0, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->mSize:I

    invoke-interface {v0, p1, v1, v2}, Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;->onPostFetch(Ljava/lang/String;II)V

    .line 60
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
