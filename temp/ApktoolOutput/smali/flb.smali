.class public abstract Lflb;
.super Lflf;
.source "CommunityRichFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lflf",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lflf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(II)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lflb;->c(II)Lflg;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Lflg;->getTotal()I

    move-result v1

    iput v1, p0, Lflb;->b:I

    .line 22
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
