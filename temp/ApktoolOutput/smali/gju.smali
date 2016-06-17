.class public final Lgju;
.super Lfxm;
.source "GetVideoVarietyEpisodeModelListDelegate.java"


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgju;->b:Ljava/lang/Long;

    .line 48
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://videos.wandoujia.com/api/v1/variety"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgju;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 58
    iget-object v0, p0, Lgju;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "year"

    iget-object v1, p0, Lgju;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
