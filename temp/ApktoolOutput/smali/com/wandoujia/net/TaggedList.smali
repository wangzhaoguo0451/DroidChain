.class public Lcom/wandoujia/net/TaggedList;
.super Ljava/util/ArrayList;
.source "TaggedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public tag()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/wandoujia/net/TaggedList;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 13
    iput-object p1, p0, Lcom/wandoujia/net/TaggedList;->tag:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public tagNull(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/net/TaggedList;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/wandoujia/net/TaggedList;->tag:Ljava/lang/Object;

    .line 19
    :cond_0
    return-void
.end method
