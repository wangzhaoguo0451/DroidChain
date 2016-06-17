.class final Lcqm;
.super Ljava/lang/Object;
.source "GetUpgradableAppsDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/processor/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/processor/Processor",
        "<",
        "Ljava/lang/String;",
        "Lcom/wandoujia/appmanager/model/UpdateMarketApps;",
        "Lcom/wandoujia/rpc/http/exception/ContentParseException;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcqm;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->parseFromJson(Ljava/lang/String;)Lcom/wandoujia/appmanager/model/UpdateMarketApps;

    move-result-object v0

    return-object v0
.end method
