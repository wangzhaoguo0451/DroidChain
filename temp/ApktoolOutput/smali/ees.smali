.class public Lees;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

.field public f:Z

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

.field public l:Ljava/lang/String;

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v2, p0, Lees;->a:Ljava/lang/String;

    .line 169
    iput-object v2, p0, Lees;->b:Ljava/lang/String;

    .line 170
    iput-object v2, p0, Lees;->c:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lees;->d:Ljava/util/HashMap;

    .line 172
    iput-object v2, p0, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lees;->f:Z

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lees;->g:J

    .line 175
    iput-object v2, p0, Lees;->h:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/launcher_base/download/DownloadRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, Lees;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    invoke-static {}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lack of Paramters to build a download request  Make sure you have set url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lees;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and Content Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadRequest;

    invoke-direct {v0, p0, v3}, Lcom/wandoujia/launcher_base/download/DownloadRequest;-><init>(Lees;B)V

    goto :goto_0
.end method

.method public a(I)Lees;
    .locals 0
    .parameter

    .prologue
    .line 407
    iput p1, p0, Lees;->m:I

    .line 408
    return-object p0
.end method

.method public final a(Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;Ljava/lang/String;)Lees;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lees;->k:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    .line 402
    iput-object p2, p0, Lees;->l:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lees;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lees;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lees;->d:Ljava/util/HashMap;

    .line 359
    :cond_0
    iget-object v0, p0, Lees;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-object p0
.end method
