.class public Lcom/wandoujia/p4/pay/loader/Fetcher;
.super Ljava/lang/Object;
.source "Fetcher.java"


# static fields
.field private static final DEFAULT_FIRST_SIZE:I = 0x28

.field private static final DEFAULT_PAGE_SIZE:I = 0x14


# instance fields
.field private curSize:I

.field private final firstSize:I

.field private mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

.field private final pageSize:I


# direct methods
.method public constructor <init>(IILcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->firstSize:I

    .line 22
    iput p2, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->pageSize:I

    .line 23
    iput-object p3, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    const/16 v0, 0x28

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, p1}, Lcom/wandoujia/p4/pay/loader/Fetcher;-><init>(IILcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;)V

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/loader/Fetcher;)Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;
    .locals 1
    .parameter

    .prologue
    .line 5
    iget-object v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wandoujia/p4/pay/loader/Fetcher;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5
    iput p1, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->curSize:I

    return p1
.end method


# virtual methods
.method public fetch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    iget v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->curSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->curSize:I

    .line 28
    :goto_0
    new-instance v1, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;-><init>(Lcom/wandoujia/p4/pay/loader/Fetcher;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-void

    .line 27
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->firstSize:I

    goto :goto_0
.end method

.method public fetchMore()V
    .locals 5

    .prologue
    .line 32
    iget v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->curSize:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->firstSize:I

    .line 33
    :goto_0
    new-instance v1, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;-><init>(Lcom/wandoujia/p4/pay/loader/Fetcher;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    iget v4, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->curSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/loader/Fetcher$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void

    .line 32
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/pay/loader/Fetcher;->pageSize:I

    goto :goto_0
.end method
