.class public final Lfwf;
.super Lfxc;
.source "GetCommentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxc",
        "<",
        "Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lfwg;

    invoke-direct {v0}, Lfwg;-><init>()V

    invoke-direct {p0, v0}, Lfxc;-><init>(Lczv;)V

    .line 25
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
            "Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lfxc;-><init>(Lczv;)V

    .line 44
    return-void
.end method
