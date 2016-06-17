.class public final Lgjg;
.super Lfxm;
.source "GetPersonListByVideoIdDelegate.java"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 60
    iput-wide p1, p0, Lgjg;->a:J

    .line 67
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://graph.wandoujia.com/api/v1/query/video/person"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lgjg;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 77
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/person/PersonOptionFields;->GRAPH_PERSON_BY_VID_API_PERSON_VIDEO_DETAIL:Lcom/wandoujia/p4/person/PersonOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/person/PersonOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
