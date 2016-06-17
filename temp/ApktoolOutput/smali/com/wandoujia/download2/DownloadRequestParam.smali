.class public final Lcom/wandoujia/download2/DownloadRequestParam;
.super Ljava/lang/Object;
.source "DownloadRequestParam.java"


# instance fields
.field public a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

.field public g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->NONE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v0, p0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download2/DownloadRequestParam;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/download2/DownloadRequestParam;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-direct {v0}, Lcom/wandoujia/download2/DownloadRequestParam;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 44
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->c:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->d:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 49
    iget-object v1, p0, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/wandoujia/download2/DownloadRequestParam;->h:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->h:Ljava/util/Map;

    .line 51
    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/wandoujia/download2/DownloadRequestParam;->a()Lcom/wandoujia/download2/DownloadRequestParam;

    move-result-object v0

    return-object v0
.end method
