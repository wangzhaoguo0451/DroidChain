.class public final Lfma;
.super Lfxm;
.source "GetCommunityGroupPermissionRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfma;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 23
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lfma;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please set group id first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const-string v0, "http://group.wandoujia.com/api/v1//groups/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lfma;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 34
    const-string v0, "opt_fields"

    const-string v1, "curUserPermissions"

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
