.class public final Lfwi;
.super Lfxc;
.source "GetDarkKnowledgeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxc",
        "<",
        "Lcom/wandoujia/p4/video/model/ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lfwj;

    invoke-direct {v0}, Lfwj;-><init>()V

    invoke-direct {p0, v0}, Lfxc;-><init>(Lczv;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lczv;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/ProviderInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lfxc;-><init>(Lczv;)V

    .line 28
    return-void
.end method
