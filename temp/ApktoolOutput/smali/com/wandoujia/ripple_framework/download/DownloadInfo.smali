.class public final Lcom/wandoujia/ripple_framework/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public d:Lcom/wandoujia/download2/DownloadInfo2;

.field public e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:J

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 102
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 103
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    .line 105
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    .line 106
    iget-wide v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->i:J

    iput-wide v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->i:J

    .line 107
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    .line 108
    iget v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    iput v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    .line 109
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    .line 112
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->j:Z

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->j:Z

    .line 113
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->k:Z

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->k:Z

    .line 114
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-virtual {v1}, Lcom/wandoujia/download2/DownloadInfo2;->b()Lcom/wandoujia/download2/DownloadInfo2;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    .line 115
    return-object v0
.end method

.method public final a(Lcom/wandoujia/download2/DownloadInfo2;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/wandoujia/download2/DownloadInfo2;->b()Lcom/wandoujia/download2/DownloadInfo2;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v1, Lhca;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/download2/DownloadInfo2$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 95
    return-void

    .line 94
    :pswitch_0
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a()Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method
