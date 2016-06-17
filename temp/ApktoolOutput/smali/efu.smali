.class public final Lefu;
.super Lcom/wandoujia/rpc/http/processor/JsonListProcessor;
.source "LauncherJsonListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lefu",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lede;

    invoke-direct {v0}, Lede;-><init>()V

    invoke-direct {p0, v0}, Lefu;-><init>(Lczv;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Lczv;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczv",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lefr;->a()Lcvo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/wandoujia/rpc/http/processor/JsonListProcessor;-><init>(Lcvo;Lczv;)V

    .line 16
    return-void
.end method
