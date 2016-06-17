.class public Lfxc;
.super Lcom/wandoujia/rpc/http/processor/JsonListProcessor;
.source "PhoenixJsonListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxc",
        "<",
        "Lcom/wandoujia/entities/app/AppLiteInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lfwd;

    invoke-direct {v0}, Lfwd;-><init>()V

    invoke-direct {p0, v0}, Lfxc;-><init>(Lczv;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lczv;)V
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
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/wandoujia/rpc/http/processor/JsonListProcessor;-><init>(Lcvo;Lczv;)V

    .line 16
    return-void
.end method
