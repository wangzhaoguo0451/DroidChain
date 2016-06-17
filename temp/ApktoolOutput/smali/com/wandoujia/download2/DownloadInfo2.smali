.class public final Lcom/wandoujia/download2/DownloadInfo2;
.super Ljava/lang/Object;
.source "DownloadInfo2.java"


# instance fields
.field public final a:Lcom/wandoujia/download2/DownloadRequestParam;

.field public b:Lcom/wandoujia/download2/DownloadInfo2$State;

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/wandoujia/download2/DownloadRequestParam;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/wandoujia/download2/DownloadInfo2$State;->PENDING:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v0, p0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    .line 20
    iput-object p1, p0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->CANCELED:Lcom/wandoujia/download2/DownloadInfo2$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->SUCCEED:Lcom/wandoujia/download2/DownloadInfo2$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/wandoujia/download2/DownloadInfo2;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, p0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-virtual {v1}, Lcom/wandoujia/download2/DownloadRequestParam;->a()Lcom/wandoujia/download2/DownloadRequestParam;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/download2/DownloadInfo2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;)V

    .line 35
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 36
    iget v1, p0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    .line 37
    iget-wide v2, p0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    .line 38
    iget-wide v2, p0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 39
    iget-wide v2, p0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    .line 40
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    .line 41
    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/wandoujia/download2/DownloadInfo2;->b()Lcom/wandoujia/download2/DownloadInfo2;

    move-result-object v0

    return-object v0
.end method
