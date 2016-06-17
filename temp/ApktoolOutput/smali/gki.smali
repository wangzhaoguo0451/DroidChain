.class public Lgki;
.super Lfxm;
.source "GetVideoDetailRequestBuilder.java"


# instance fields
.field protected a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

.field public d:Ljava/lang/String;

.field public e:Lcom/wandoujia/p4/video/model/VideoSubType;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 19
    sget-object v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->DESC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    iput-object v0, p0, Lgki;->c:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    return-void
.end method


# virtual methods
.method public final a()Lgki;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgki;->f:Ljava/lang/Integer;

    .line 35
    return-object p0
.end method

.method public final a(J)Lgki;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgki;->a:Ljava/lang/Long;

    .line 30
    return-object p0
.end method

.method public final b()Lgki;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgki;->g:Ljava/lang/Integer;

    .line 45
    return-object p0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://videos.wandoujia.com/api/v1/videos"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgki;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 61
    iget-object v0, p0, Lgki;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "estart"

    iget-object v1, p0, Lgki;->f:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lgki;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "emax"

    iget-object v1, p0, Lgki;->g:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v0, p0, Lgki;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "sessionId"

    iget-object v1, p0, Lgki;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lgki;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    const-string v0, "opt_fields"

    iget-object v1, p0, Lgki;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lgki;->c:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    if-eqz v0, :cond_4

    .line 74
    const-string v0, "order"

    iget-object v1, p0, Lgki;->c:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->getOrderNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    iget-object v0, p0, Lgki;->e:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-eqz v0, :cond_5

    .line 77
    const-string v0, "subType"

    iget-object v1, p0, Lgki;->e:Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoSubType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_5
    return-void
.end method
