.class public final Lcqg;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wandoujia/appmanager/LocalAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 549
    check-cast p1, Lcom/wandoujia/appmanager/LocalAppInfo;

    check-cast p2, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getLastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getLastUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method
