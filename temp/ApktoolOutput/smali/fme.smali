.class public final Lfme;
.super Lfiq;
.source "GetCommunityNotificationBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lfiq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "http://group.wandoujia.com/api/v1/notifications/list"

    return-object v0
.end method
