.class public Lefv;
.super Lcom/wandoujia/rpc/http/processor/JsonProcessor;
.source "LauncherJsonProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/wandoujia/rpc/http/processor/JsonProcessor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lefr;->a()Lcvo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/rpc/http/processor/JsonProcessor;-><init>(Lcvo;)V

    .line 13
    return-void
.end method
