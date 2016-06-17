.class public final Lfls;
.super Lfxx;
.source "CommunityPushSwitchBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lfxx;-><init>()V

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfls;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 14
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "http://group.wandoujia.com/api/v1/experiment/open_push"

    return-object v0
.end method
